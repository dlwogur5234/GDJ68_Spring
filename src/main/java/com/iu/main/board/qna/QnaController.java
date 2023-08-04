package com.iu.main.board.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.main.board.BoardDTO;
import com.iu.main.board.notice.NoticeService;
import com.iu.main.util.Pager;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	@Autowired
	private QnaService qnaService;

	@ModelAttribute("board")
	public String getBoardName() {
		return "qna";
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String getList(Pager pager, Model model) throws Exception {
		List<BoardDTO> ar = qnaService.getList(pager);
		model.addAttribute("list", ar);
		model.addAttribute("pager", pager);
		return "board/list";
	}

	@RequestMapping(value = "add", method = RequestMethod.GET)
	public String setAdd() throws Exception {
		return "board/add";
	}

	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String setAdd(QnaDTO qnaDTO, MultipartFile[] photos, HttpSession session) throws Exception {
		int result = qnaService.setAdd(qnaDTO, photos, session);
		return "redirect:./list";
	}

	@RequestMapping(value = "detail", method = RequestMethod.GET)
	public ModelAndView getDetail(BoardDTO boardDTO, ModelAndView mv) throws Exception {
		boardDTO = qnaService.getDetail(boardDTO);
		mv.addObject("dto", boardDTO);
		mv.setViewName("board/detail");

		return mv;
	}

	@RequestMapping(value = "reply", method = RequestMethod.GET)
	public String setReply(Long num, Model model) throws Exception {
		model.addAttribute("num", num);
		return "board/reply";
	}

	@RequestMapping(value = "reply", method = RequestMethod.POST)
	public String setReply(QnaDTO qnaDTO, MultipartFile[] photos, HttpSession session) throws Exception {
		int result = qnaService.setReplyAdd(qnaDTO, photos, session);
		return "redirect:./list";
	}
	  @RequestMapping(value = "update")
	  public String setUpdate(BoardDTO boardDTO,Model model) throws Exception{
		  boardDTO = qnaService.getDetail(boardDTO);
		  model.addAttribute("dto", boardDTO);
		  return "board/update";
	  }
	  @RequestMapping(value = "update" , method = RequestMethod.POST)
	  public String setUpdate(BoardDTO boardDTO) throws Exception{
		  int result = qnaService.setUpdate(boardDTO);
		  return "redirect:./list";
	  }
	  @RequestMapping(value = "delete", method = RequestMethod.POST)
	  public String setDelete(BoardDTO boardDTO) throws Exception{
		  int result=qnaService.setDelete(boardDTO);
		  return "redirect:./list";
	  }
	 
}
