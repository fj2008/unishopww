package com.cos.unishop.config;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class SessionInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//여기에 공통관심사 넣기
		HttpSession session = request.getSession();
		
		if(session.getAttribute("adminprincipal") == null) {
			response.sendRedirect("/");
			return false;
		}
		
		return  true;
	}

	

}
