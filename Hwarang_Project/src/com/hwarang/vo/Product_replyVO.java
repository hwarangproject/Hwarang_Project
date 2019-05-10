package com.hwarang.vo;

import java.util.Date;

/*
 * REPLY_CONTENT NOT NULL CLOB   
REPLY_REGDATE          DATE   
PRODUCT_RATE  NOT NULL NUMBER 
PRODUCT_NO    NOT NULL NUMBER 
MEMBER_NO     NOT NULL NUMBER 
REPLY_NO               NUMBER 
 * 
 */
public class Product_replyVO {
	private String reply_content;
	private Date regdate;
	private int product_rate;
	private int product_no;
	private int member_no;
	private int reply_no;
	
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getProduct_rate() {
		return product_rate;
	}
	public void setProduct_rate(int product_rate) {
		this.product_rate = product_rate;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getReply_no() {
		return reply_no;
	}
	public void setReply_no(int reply_no) {
		this.reply_no = reply_no;
	}
	
	
	
}
