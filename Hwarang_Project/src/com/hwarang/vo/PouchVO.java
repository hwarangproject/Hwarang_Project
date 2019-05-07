package com.hwarang.vo;

import java.sql.Date;

public class PouchVO {
	private int pouch_no;
	private String product_name;
	private int pouch_score;
	private String product_img;
	private int pouch_like;
	// 등록 날짜, 만료 날짜
	private Date regdate;
	private Date expdate;
	private int pouch_reply_no;
	private String pouch_reply;
	private int member_no;
	
	public int getPouch_no() {
		return pouch_no;
	}
	public void setPouch_no(int pouch_no) {
		this.pouch_no = pouch_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getPouch_score() {
		return pouch_score;
	}
	public void setPouch_score(int pouch_score) {
		this.pouch_score = pouch_score;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public int getPouch_like() {
		return pouch_like;
	}
	public void setPouch_like(int pouch_like) {
		this.pouch_like = pouch_like;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getExpdate() {
		return expdate;
	}
	public void setExpdate(Date expdate) {
		this.expdate = expdate;
	}
	public int getPouch_reply_no() {
		return pouch_reply_no;
	}
	public void setPouch_reply_no(int pouch_reply_no) {
		this.pouch_reply_no = pouch_reply_no;
	}
	public String getPouch_reply() {
		return pouch_reply;
	}
	public void setPouch_reply(String pouch_reply) {
		this.pouch_reply = pouch_reply;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
}
