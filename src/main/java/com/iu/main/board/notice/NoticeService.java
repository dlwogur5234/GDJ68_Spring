package com.iu.main.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.main.bankBook.BankFileDTO;
import com.iu.main.board.BoardDTO;
import com.iu.main.util.FileManager;
import com.iu.main.util.Pager;

@Service
public class NoticeService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public List<BoardDTO> getList(Pager pager) throws Exception {
		
		pager.makeRowNum();
		Long total = noticeDAO.getTotal(pager);
		pager.makePageNum(total);
		
		return noticeDAO.getList(pager);
	}
	
	public int setAdd(BoardDTO boardDTO,MultipartFile [] photos, HttpSession session) throws Exception {
		
		String path ="/resources/upload/notice";
		
		int result = noticeDAO.setAdd(boardDTO);
		
		for(MultipartFile multipartFile: photos) {
			
			if(multipartFile.isEmpty()) {
				continue;
			}
			String fileName = fileManager.fileSave(path, session, multipartFile);
			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
			noticeFileDTO.setOriginalName(multipartFile.getOriginalFilename());
			noticeFileDTO.setFileName(fileName);
			noticeFileDTO.setNoticeNum(boardDTO.getNum());
			result = noticeDAO.setFileAdd(noticeFileDTO);
		}
		return result;
		
	}
	
	public NoticeDTO getDetail(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.getDetail(boardDTO);
	}
	
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.setUpdate(boardDTO);
	}
	
	public int setDelete(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.setDelete(boardDTO);
	}
	
	public int setHitUpdate(BoardDTO boardDTO) throws Exception {
	
		return noticeDAO.setHitUpdate(boardDTO);
	}
	
}