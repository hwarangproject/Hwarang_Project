package com.hwarang.vo;

import java.sql.Date;
/*
 * POUCH_NO      NOT NULL NUMBER         
POUCH_SCORE   NOT NULL NUMBER(2,1)    
POUCH_IMG     NOT NULL VARCHAR2(1000) 
POUCH_LIKE    NOT NULL NUMBER         
REGDATE                DATE           
EXPDATE                DATE           
MEMBER_NO     NOT NULL NUMBER         
POUCH_CONTENT          VARCHAR2(4000) 
 */
public class PouchVO {
	private int pouch_no;
	private String pouch_content;
	private String pouch_name;
	private double pouch_score;
	private String pouch_img;
	private int pouch_like;
	// 등록 날짜, 만료 날짜
	private Date regdate;
	private Date expdate;
	private int member_no;
	
	//조인할 친구들
	private String nickname;
	private String profile_img;
	private String skin_type;
	
	
	
	
	public int getPouch_no() {
		return pouch_no;
	}
	public void setPouch_no(int pouch_no) {
		this.pouch_no = pouch_no;
	}
	public String getPouch_content() {
		return pouch_content;
	}
	public void setPouch_content(String pouch_content) {
		this.pouch_content = pouch_content;
	}
	public String getPouch_name() {
		return pouch_name;
	}
	public void setPouch_name(String pouch_name) {
		this.pouch_name = pouch_name;
	}
	public double getPouch_score() {
		return pouch_score;
	}
	public void setPouch_score(double pouch_score) {
		this.pouch_score = pouch_score;
	}
	public String getPouch_img() {
		return pouch_img;
	}
	public void setPouch_img(String pouch_img) {
		this.pouch_img = pouch_img;
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
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfile_img() {
		return profile_img;
	}
	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}
	public String getSkin_type() {
		return skin_type;
	}
	public void setSkin_type(String skin_type) {
		this.skin_type = skin_type;
	}

}
