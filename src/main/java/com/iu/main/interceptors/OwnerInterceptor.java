package com.iu.main.interceptors;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.iu.main.board.BoardDTO;
import com.iu.main.member.MemberDTO;

public class OwnerInterceptor  extends HandlerInterceptorAdapter{

	//게시판 수정시 로그인 한 유저와 작성자가 일치
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		String method=request.getMethod();
		if(method.equals("POST")) {
			return;
		}
		MemberDTO memberDTO=(MemberDTO)request.getSession().getAttribute("member");
		Map<String, Object> map=modelAndView.getModel();
		BoardDTO boardDTO =(BoardDTO)map.get("dto");
		
		if(!memberDTO.getId().equals(boardDTO.getName())) {
			modelAndView.addObject("message", "로그인 필요");
			modelAndView.addObject("url", "./list");
			modelAndView.setViewName("commons/result");
		}
	}
	
	
}
