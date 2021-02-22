package com.ssafy.happyhouse.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Servlet implementation class MainServlet
 */
@Controller
@RequestMapping("")
public class MainServlet extends HttpServlet {
	
	@GetMapping("/")
	protected String index() {
		return "index";
	}

	@GetMapping("/search")
	protected String search() {
		return "search";
	}

	@GetMapping("/searchDetail")
	protected String searchDeatil() {
		return "searchDetail";
	}
	@GetMapping("/findPassword")
	protected String findPassword() {
		return "login/findPassword";
	}
	@GetMapping("/include/Error")
	protected String erorr() {
		return "/include/Error";
	}
}
