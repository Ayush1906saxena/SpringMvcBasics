package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	/*
	 * The following function will be called by
	 * '/' and will redirect us to /WEB_INF/view/main-menu.jsp as we have
	 * set '.jsp' as a suffix
	 */
	
	@RequestMapping("/")
	public String showPage() {
		return "main-menu";
	}
}
