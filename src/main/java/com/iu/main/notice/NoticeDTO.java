package com.iu.main.notice;

import java.sql.Date;
import java.util.List;

import com.iu.main.bankBook.BankFileDTO;

public class NoticeDTO {

	private Long noticeNum;
	private String subject;
	private String contents;
	private String name;
	private Date createDate;
	private Long hit;
	private List<NoticeFileDTO> fileDTOs;
	
	
	public List<NoticeFileDTO> getFileDTOs() {
		return fileDTOs;
	}
	public void setFileDTOs(List<NoticeFileDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}
	public Long getNoticeNum() {
		return noticeNum;
	}
	public void setNoticeNum(Long noticeNum) {
		this.noticeNum = noticeNum;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Long getHit() {
		return hit;
	}
	public void setHit(Long hit) {
		this.hit = hit;
	}
	
}