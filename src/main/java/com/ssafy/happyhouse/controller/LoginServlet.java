package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssafy.happyhouse.model.service.LoginService;
import com.ssafy.happyhouse.model.service.LoginServiceImpl;

@Controller
@RequestMapping("/Login")
public class LoginServlet{

	@Autowired
	private LoginService loginService;

	@GetMapping(value = "/login")
	public String getlogin() {
		return "login/login";
	}

	@PostMapping(value = "/login")
	public String login(String your_name, String your_pass, Model model, HttpSession hs) {
		try {
			String user = loginService.login(your_name, your_pass);
			if (user != null) {
				hs.setAttribute("user", user);
			} else {
				model.addAttribute("msg", "아이디,비빌번호 확인해주세요");
				return "login/login";
			}
		} catch (SQLException e) {
			model.addAttribute("msg", "로그인 중 오류가 발생했습니다.");
		}
		return "redirect:/";
	}

	@GetMapping("/logout")
	public String logout(HttpSession hs) {
		hs.invalidate();
		return "redirect:/";
	}
	
}