package com.victortylikov.spring.controller;

import javax.servlet.http.HttpServletRequest;
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
 
    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public String listUsers(ModelMap map)
    {
        map.addAttribute("user", new User());
        map.addAttribute("listUsers", userService.findAllUsers());
   
        return "listUsers";
    }
    
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String addUserGet(ModelMap map)
    { 
    	map.addAttribute("user", new User());
        return "addUser";
    }
 
    @RequestMapping(value = "/addUserPost", method = RequestMethod.POST)
    public String addUser(@ModelAttribute(value="user") @Valid User user, BindingResult result)
    {
    	if (result.hasErrors()) {
			return "/addUser";
		}
    	userService.addUser(user);
    	authenticateUserAndSetSession(user);
        return "../index";
    }
    
    	private void authenticateUserAndSetSession(User user)
    {
        UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(
                user.getLogin(), user.getPassword());
        Authentication authenticatedUser = authenticationManager.authenticate(token);
        SecurityContextHolder.getContext().setAuthentication(authenticatedUser);
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        return "login";
    }
    
    @RequestMapping(value = "/loginFail", method = RequestMethod.GET)
    public String loginerror(ModelMap model) {
        model.addAttribute("error", "true");
        return "/error/loginfailure";
    }
    
    @RequestMapping(value = "/info/{login}", method = RequestMethod.GET)
    public String deleteUser(ModelMap model, @PathVariable("login") String login) {
        User user=userService.getUserByName(login);
        model.addAttribute("user", user);
        return "userInfo";
    }
    
   }
