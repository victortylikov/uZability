package com.victortylikov.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.victortylikov.spring.domain.User;
import com.victortylikov.spring.domain.UserDetail;
import com.victortylikov.spring.service.AuthenticationUserDetails;
import com.victortylikov.spring.service.Password;
import com.victortylikov.spring.service.UserService;

@Controller
public class UserController {

	@Autowired
	@Qualifier("authenticationManager")
	private AuthenticationManager authenticationManager;

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		return "../index";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String addUserGet(ModelMap map) {
		map.addAttribute("user", new User());
		return "addUser";
	}

	@RequestMapping(value = "/addUserPost", method = RequestMethod.POST)
	public String addUser(@ModelAttribute(value = "user") @Valid User user,
			BindingResult result) {
		if (result.hasErrors()) {
			return "/addUser";
		}
		userService.addUser(user);
		authenticateUserAndSetSession(user);
		return "../index";
	}

	private void authenticateUserAndSetSession(User user) {
		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(
				user.getLogin(), user.getPassword());
		Authentication authenticatedUser = authenticationManager
				.authenticate(token);
		SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/loginFail", method = RequestMethod.GET)
	public String loginError(ModelMap model) {
		model.addAttribute("error", "true");
		return "/error/loginfailure";
	}

	@RequestMapping(value = "/profile/{login}", method = RequestMethod.GET)
	public String profileUser(ModelMap model,
			@PathVariable("login") String login) {
		User user = userService.getUserByName(login);
		model.addAttribute("password", new Password());
		model.addAttribute("user", user);
		model.addAttribute("userdetail", user.getUserDetail());
		return "/profile";
	}

	@RequestMapping(value = "/profile/changePassword", method = RequestMethod.POST)
	public String changePassword(
			@ModelAttribute(value = "password") @Valid Password password,
			BindingResult result, ModelMap model) {

		AuthenticationUserDetails authUser = (AuthenticationUserDetails) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();

		if (result.hasErrors()) {
			User userOld = userService.getUserByName(authUser.getUsername());
			model.addAttribute("user", userOld);
			return "/profile";
		}
		if ((password.getCurrentPassword().equals(authUser.getPassword()))
				& (password.getNewPassword1()
						.equals(password.getNewPassword2()))) {
			User user = userService.updateUserPassword(authUser.getUsername(),
					password.getNewPassword1());
			authenticateUserAndSetSession(user);
			model.addAttribute("password", new Password());
			model.addAttribute("user", user);
			return "redirect:/profile/" + user.getLogin();
		}
		if (!(password.getCurrentPassword().equals(authUser.getPassword()))) {
			User userOld = userService.getUserByName(authUser.getUsername());
			model.addAttribute("user", userOld);
			model.addAttribute("wrongOldPassword",
					"Неправильный текущий пароль!");
			return "/profile";
		}
		if (!(password.getNewPassword1().equals(password.getNewPassword2()))) {
			User userOld = userService.getUserByName(authUser.getUsername());
			model.addAttribute("user", userOld);
			model.addAttribute("wrongNewPassword", "Пароли не совпадают!");
			return "/profile";
		}
		return "redirect:/profile/" + authUser.getUsername();

	}

	@RequestMapping(value = "/editProfile", method = RequestMethod.GET)
	public String editProfileGet(ModelMap map) {
		User user=getCurrentUser();
		UserDetail userDetail=user.getUserDetail();
		if(userDetail==null){
			userDetail=new UserDetail();
		}
		map.addAttribute("userDetail", userDetail);
		return "profileEdit";
	}

	@RequestMapping(value = "/editProfilePost", method = RequestMethod.POST)
	public String editProfilePost(@ModelAttribute(value = "userDetail") UserDetail userDetail,
			BindingResult result) {
		
		User user = getCurrentUser();
		userDetail.setIdUser(user.getIdUser());
		userService.addUserDetail(userDetail);
		System.out.println("aaaaa  "+userDetail.getFirstName());
		// map.addAttribute("user", new User());
		return "profileEdit";
	}

	public User getCurrentUser() {
		AuthenticationUserDetails authUser = (AuthenticationUserDetails) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		User user = userService.getUserByName(authUser.getUsername());
		return user;
	}

}
