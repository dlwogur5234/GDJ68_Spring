package com.iu.main.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.iu.main.util.Pager;

public interface BoardService {
	//List
	public List<BoardDTO> getList(Pager pager) throws Exception;
	//Detail
	public BoardDTO getDetail(BoardDTO boardDTO) throws Exception;
	//Add
	public int setAdd(BoardDTO boardDTO , MultipartFile [] photos, HttpSession session) throws Exception;
	//Update
	public int setUpdate(BoardDTO boardDTO) throws Exception;
	//delete
	public int setDelete(BoardDTO boardDTO) throws Exception;
	
	
	
	
	
	
	
	
}
