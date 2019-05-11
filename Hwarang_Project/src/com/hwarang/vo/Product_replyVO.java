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
	// join 추가
	private String profile_img;
	private String id;
	private String sex;
	private String skin_type;
	private String age_group;
	//확인용
	private int member_no2;
	
	
	
	public int getMember_no2() {
		return member_no2;
	}
	public void setMember_no2(int member_no2) {
		this.member_no2 = member_no2;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getSkin_type() {
		return skin_type;
	}
	public void setSkin_type(String skin_type) {
		this.skin_type = skin_type;
	}
	public String getAge_group() {
		return age_group;
	}
	public void setAge_group(String age_group) {
		this.age_group = age_group;
	}
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
