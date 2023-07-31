package com.iu.main.qna;

import java.sql.Date;

public class QnaDTO {
	private Integer qnaNum;
	private String name;
	private String subject;
	private String contents;
	private Date createDate;
	private Integer hit;
	private Integer ref;
	private Integer step;
	private Integer depth;
	public Integer getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(Integer qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getHit() {
		return hit;
	}
	public void setHit(Integer hit) {
		this.hit = hit;
	}
	public Integer getRef() {
		return ref;
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
