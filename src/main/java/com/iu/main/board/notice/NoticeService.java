package com.iu.main.board.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.main.bankBook.BankFileDTO;
import com.iu.main.board.BoardDTO;
import com.iu.main.board.BoardService;
import com.iu.main.file.FileDTO;
import com.iu.main.util.FileManager;
import com.iu.main.util.Pager;

@Service
public class NoticeService implements BoardService {

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public String setContentsImg(MultipartFile file,HttpSession session)throws Exception{
		String path = "/resources/upload/notice/";
		String fileName=fileManager.fileSave(path, session, file);
		return path+fileName;
	}
	
	public List<BoardDTO> getList(Pager pager) throws Exception {
		
		pager.makeRowNum();
		Long total = noticeDAO.getTotal(pager);
		pager.makePageNum(total);
		
		return noticeDAO.getList(pager);
	}
	@Override
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
	@Override
	public NoticeDTO getDetail(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.getDetail(boardDTO);
	}
	@Override
	public int setUpdate(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.setUpdate(boardDTO);
	}
	@Override
	public int setDelete(BoardDTO boardDTO) throws Exception {
		
		return noticeDAO.setDelete(boardDTO);
	}
	
	public int setHitUpdate(BoardDTO boardDTO) throws Exception {
	
		return noticeDAO.setHitUpdate(boardDTO);
	}
	
	public int setFileDelete(NoticeFileDTO noticeFileDTO) throws Exception{
		return noticeDAO.setFileDelete(noticeFileDTO);
	}
	public boolean setContentsImgDelete(String path,HttpSession session ) throws Exception{
		//path: /resources/upload/notice/파일명
		FileDTO fileDTO = new FileDTO();
//		path= path.substring(0, path.lastIndexOf("\\")+1);
		System.out.println(path.substring(path.lastIndexOf("/")+1));
		fileDTO.setFileName(path.substring(path.lastIndexOf("/")+1));
		path="/resources/upload/notice/";
		return fileManager.fileDelete(fileDTO, path, session);
	}
	
}