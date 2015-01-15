package com.victortylikov.spring.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.victortylikov.spring.domain.Article;
import com.victortylikov.spring.domain.User;
import com.victortylikov.spring.domain.UserDetail;
import com.victortylikov.spring.service.AuthenticationUserDetails;
import com.victortylikov.spring.service.Password;
import com.victortylikov.spring.service.UserService;
import com.victortylikov.spring.service.ArticleService;

@Controller
public class UserController {

	@Autowired
	@Qualifier("authenticationManager")
	private AuthenticationManager authenticationManager;

	@Autowired
	private UserService userService;

	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		model.addAttribute("listArticles", articleService.getArticles());
		return "../index";
	}

	@RequestMapping(value = "/articles", method = RequestMethod.GET)
	public String articles(ModelMap model,HttpServletResponse response) {
		List<Article> listArticles=articleService.getArticles();
		model.addAttribute("listArticles", listArticles);
						
		return "articles";
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
		String userGenderString = null;
		if (user.getUserDetail().getGender() == 1) {
			userGenderString = "Мужской";
		} else if (user.getUserDetail().getGender() == 2) {
			userGenderString = "Женский";

		}
		model.addAttribute("password", new Password());
		model.addAttribute("user", user);
		model.addAttribute("userdetail", user.getUserDetail());
		model.addAttribute("userGender", userGenderString);
		return "/profile";
	}

	@RequestMapping(value = "/profile/changePassword", method = RequestMethod.POST)
	public String changePassword(
			@ModelAttribute(value = "password") @Valid Password password,
			BindingResult result, ModelMap model) {

		AuthenticationUserDetails authUser = (AuthenticationUserDetails) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		model.addAttribute("userdetail", getCurrentUser().getUserDetail());

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

		User user = getCurrentUser();
		UserDetail userDetail = user.getUserDetail();
		if (userDetail == null) {
			userDetail = new UserDetail();
		}

		map.addAttribute("userDetail", userDetail);

		return "profileEdit";
	}

	@RequestMapping(value = "/editProfilePost", method = RequestMethod.POST)
	public String editProfilePost(
			@ModelAttribute(value = "userDetail") UserDetail userDetail,
			BindingResult result) {
		if (result.hasErrors()) {
			return "../index";
		}
		User user = getCurrentUser();
		userDetail.setIdUser(user.getIdUser());
		if (userDetail.getBirthDate() == "") {
			userDetail.setBirthDate(null);
		}
		userDetail.setPhoto(user.getUserDetail().getPhoto());
		userService.addUserDetail(userDetail);

		return "redirect:/profile/" + user.getLogin();
	}

	@RequestMapping(value = "/profile/uploadImage", method = RequestMethod.POST)
	public String uploadImage(
			@ModelAttribute(value = "uploadForm") UserDetail userDetail,
			@RequestParam("file") MultipartFile file, BindingResult result) {

		try {

			byte[] bytes = file.getBytes();

			userService.saveAvatar(getCurrentUser().getUserDetail(), bytes);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/profile/" + getCurrentUser().getLogin();
	}

	public User getCurrentUser() {
		AuthenticationUserDetails authUser = (AuthenticationUserDetails) SecurityContextHolder
				.getContext().getAuthentication().getPrincipal();
		User user = userService.getUserByName(authUser.getUsername());
		return user;
	}

	@RequestMapping(value = "/profile/image/getAvatar")
	public void getAvatar(HttpServletResponse response) {
		Blob blob = getCurrentUser().getUserDetail().getPhoto();
		try {
			InputStream image = blob.getBinaryStream();
			OutputStream out = response.getOutputStream();
			response.setContentType("image/jpeg");
			int length = (int) image.available();
			int bufferSize = 1024;
			byte[] buffer = new byte[bufferSize];
			while ((length = image.read(buffer)) != -1) {
				out.write(buffer, 0, length);
			}
			response.flushBuffer();
			// image.close();
			out.flush();
			out.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping(value = "/getArticleImage/{idArticle}")
	public void getArticleImage(HttpServletResponse response,@PathVariable("idArticle") int idArticle) {
		Blob blob = articleService.getArticleByID(idArticle).getArticleImage();
		try {
			InputStream image = blob.getBinaryStream();
			OutputStream out = response.getOutputStream();
			response.setContentType("image/jpeg");
			int length = (int) image.available();
			int bufferSize = 1024;
			byte[] buffer = new byte[bufferSize];
			while ((length = image.read(buffer)) != -1) {
				out.write(buffer, 0, length);
			}
			response.flushBuffer();
			// image.close();
			out.flush();
			out.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
