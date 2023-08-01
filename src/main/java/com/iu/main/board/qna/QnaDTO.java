package com.iu.main.board.qna;

import java.sql.Date;
import java.util.List;

import com.iu.main.board.BoardDTO;
import com.iu.main.board.notice.NoticeFileDTO;

public class QnaDTO extends BoardDTO{
	
	private Integer ref;
	private Integer step;
	private Integer depth;
	private List<NoticeFileDTO> fileDTOs;
	
	public Integer getRef() {
		return ref;
	}
	public List<NoticeFileDTO> getFileDTOs() {
		return fileDTOs;
	}
	public void setFileDTOs(List<NoticeFileDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}
	public void setRef(Integer ref) {
		this.ref = ref;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public Integer getDepth() {
		return depth;
	}
	public void setDepth(Integer depth) {
		this.depth = depth;
	}
	
}
