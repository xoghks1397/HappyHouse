package com.ssafy.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

@Component
public class Interceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("user");
		System.out.println(user);
		if (user == null) {
			response.sendRedirect(request.getContextPath() + "/include/Error");
			return false;
		} else
			return true;
	}
}
