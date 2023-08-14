package com.iu.main.interceptors;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{

	//qna모든 기능은 로그인 사람만 가능
	//단 list는 제외
	//로그인이 x 페이지로 이동
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = ((HttpServletRequest)request).getSession();
		Object object = session.getAttribute("member");
		
		if(object!=null) {
		return true;
		}
		else {
			/* response.sendRedirect("../member/login"); */
			request.setAttribute("message", "로그인이 필요한 서비스 입니다");
			request.setAttribute("url", "../member/login");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/commons/result.jsp");
			view.forward(request, response);
			return false;
		}
	
	}
}
