package com.KoreaIT.bjw.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrAPITestController {

	@RequestMapping("/usr/home/APITest")
	public String showMain() {
		return "usr/home/APITest";
	}

}