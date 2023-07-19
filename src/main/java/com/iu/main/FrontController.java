package com.iu.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class FrontController {
	
	@RequestMapping(value = "/" )
	public String main() throws Exception{
		return  "index";
	}
	
	//home
	// / 주소가 왔을때 실행, index.jsp
	
	
}
