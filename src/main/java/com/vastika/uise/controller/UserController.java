package com.vastika.uise.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.vastika.uise.model.User;
import com.vastika.uise.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value="/user_form")
	public ModelAndView user() {
		
		ModelAndView view = new ModelAndView("createUser");
		return view;
		
	}
	
	@RequestMapping(value="/user_edit")
	public String getUserEditForm(@RequestParam int id, Model model) {
	
		model.addAttribute("user", userService.getUserById(id));
		return "editUser";
	}
	
	@RequestMapping(value={"/user_update"}, method=RequestMethod.POST)
	public String updateUser(@ModelAttribute User user, Model model) {
		userService.updateUser(user);
		return "redirect:/user_list";
		
	}
	
	
	@RequestMapping(value={"/user_delete"}, method=RequestMethod.GET)
	public String deleteUser(@RequestParam int id) {
		userService.deleteUser(id);
		
		return "redirect:/user_list";
		
	}
	
	
	@RequestMapping(value={"/user_save"}, method=RequestMethod.POST)
	public String userInfo(@Valid @ModelAttribute User user,Model model,BindingResult result) {
//		, BindingResult result
//		System.out.println("User name:"+user.getUserName());
//		System.out.println("Password:"+user.getPassword());
//		System.out.println("Email "+user.getEmail());
//		System.out.println("Mobile "+user.getMobileNo());
		if(result.hasErrors()) {
			return "createUser";
		}
	
		
		userService.saveUser(user);
		
		return "redirect:/user_list";
		
	}
	@RequestMapping(value="/user_list", method=RequestMethod.GET)
	public String getAllUser(Model model) {
		model.addAttribute("user", userService.getAllUser());
		return "listUser";
	}


}
