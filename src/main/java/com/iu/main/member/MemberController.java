package com.iu.main.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "join")
	public String join() throws Exception{
		return "member/join";
	}
	@RequestMapping(value = "login",method = RequestMethod.GET)
	public String getLogin() throws Exception{
		return "member/login";
	}
	@RequestMapping(value = "login",method = RequestMethod.POST)
	public String getLogin(MemberDTO memberDTO,HttpSession session) throws Exception{
		memberDTO = memberService.getLogin(memberDTO);
		if(memberDTO!= null) {
			session.setAttribute("member", memberDTO);
		}
		return "redirect:/";
	}
	@RequestMapping(value = "logout")
	public String logout(HttpSession session) throws Exception{
		//session.setAttribute("member", null);
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "mypage",method = RequestMethod.GET)
	public void mypage() throws Exception{
		
	}
	@RequestMapping(value = "memberUpdate", method = RequestMethod.GET)
	public void setMemberUpdate() throws Exception {
		
	}
	@RequestMapping(value = "memberUpdate", method = RequestMethod.POST)
	public String setMemberUpdate(MemberDTO memberDTO,HttpSession session) throws Exception {
		MemberDTO sessionMember=(MemberDTO)session.getAttribute("member");
		memberDTO.setId(sessionMember.getId());
		int result = memberService.setMemberUpdate(memberDTO);
		if(result > 0 ) {
			session.setAttribute("member", memberDTO);
		}
		return "redirect:./mypage";
	}
	
	}
