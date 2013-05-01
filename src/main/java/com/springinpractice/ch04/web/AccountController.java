/* 
 * Copyright (c) 2013 Manning Publications Co.
 * 
 * Book: http://manning.com/wheeler/
 * Blog: http://springinpractice.com/
 * Code: https://github.com/springinpractice
 */
package com.springinpractice.ch04.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Willie Wheeler (willie.wheeler@gmail.com)
 */
@Controller
@RequestMapping("/users")
public class AccountController {
	private static final Logger LOG = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String getRegistrationForm(Model model) {
		model.addAttribute("account", new AccountForm());
		return "users/registrationForm";
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	public String postRegistrationForm(AccountForm form) {
		LOG.info("Created registration: {}", form);
		return "redirect:/users/registration_ok.html";
	}
}
