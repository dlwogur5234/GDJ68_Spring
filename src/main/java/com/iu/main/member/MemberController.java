package com.iu.main.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@RequestMapping(value = "join")
	public String join() throws Exception{
		return "member/join";
	}
	@RequestMapping(value = "login")
	public String login() throws Exception{
		return "member/login";
	}
	@RequestMapping(value = "mypage")
	public String mypage() throws Exception{
		return "member/mypage";
	}
	
	}
