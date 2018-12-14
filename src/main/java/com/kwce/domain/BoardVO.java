package com.kwce.domain;

import java.util.Date;

public class BoardVO {
	private Integer bno;
	private String title;
	private String book_title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;
	private int rating;
	private int password;
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", book_title=" + book_title + ", content=" + content
				+ ", writer=" + writer + ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", rating=" + rating
				+ ", password=" + password + "]";
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
	}
	

	
	
}
