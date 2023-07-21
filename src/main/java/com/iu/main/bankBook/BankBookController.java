package com.iu.main.bankBook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/bankbook/*")
public class BankBookController {
	
	@Autowired
	private BankBookService bankBookService;
	
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Model model)throws Exception{
		System.out.println("list");
		List<BankBookDTO> ar=bankBookService.getList();
		model.addAttribute("list", ar);
		return "bankbook/list";
	}
	@RequestMapping(value = "detail")
	public ModelAndView getDetail(BankBookDTO bankBookDTO,ModelAndView mv) throws Exception{
		bankBookDTO=bankBookService.getDetail(bankBookDTO);
		mv.addObject("dto", bankBookDTO);
		System.out.println(bankBookDTO.getBookName());
		System.out.println("detail");
		mv.setViewName("bankbook/detail");
		return mv;
	}
	@RequestMapping(value = "add")
	public void setAdd() throws Exception{
		
	}
	@RequestMapping(value = "add" , method = RequestMethod.POST)
	public String setAdd(BankBookDTO bankBookDTO) throws Exception{
		int result=bankBookService.setAdd(bankBookDTO);
		return "redirect:./list";
	}
	@RequestMapping(value = "update")
	public void setUpdate(BankBookDTO bankBookDTO,Model mv) throws Exception{
		bankBookDTO = bankBookService.getDetail(bankBookDTO);
		mv.addAttribute("dto", bankBookDTO);
	}
	@RequestMapping(value = "update" , method = RequestMethod.POST)
	public String setUpdate(BankBookDTO bankBookDTO) throws Exception{
		int result=bankBookService.setUpdate(bankBookDTO);
		//return "redirect:./list";//list로 이동
		return "redirect:./detail?bookNum="+bankBookDTO.getBookNum();
	}
	/*
	 * @RequestMapping(value = "update" , method = RequestMethod.POST) public String
	 * getUpdate(BankBookDTO bankBookDTO) throws Exception{ int
	 * result=bankBookService.setUpdate(bankBookDTO); return "reirect:./list"; }
	 */
	@RequestMapping(value = "delete")
	public String setDelete(Long bookNum) throws Exception{
		int result=bankBookService.setDelete(bookNum);
		return "redirect:./list";//list로 이동
	}
}
