package com.hwarang.vo;

import java.sql.Date;
/*
 * MEMBER_NO   NOT NULL NUMBER         
ID          NOT NULL VARCHAR2(20)   
PW          NOT NULL VARCHAR2(20)   
EMAIL       NOT NULL VARCHAR2(100)  
NAME        NOT NULL VARCHAR2(34)   
NICKNAME    NOT NULL VARCHAR2(20)   
BDAY        NOT NULL DATE           
SKIN_TYPE            VARCHAR2(12)   
BRAND_LIKE           VARCHAR2(4000) 
ADDR        NOT NULL VARCHAR2(400)  
SEX                  VARCHAR2(20)   
PROFILE_IMG          VARCHAR2(4000) 
AGE_GROUP   NOT NULL NUMBER         
POUCH_NO             NUMBER 
 * 
 */
public class MemberVO {
	private int member_no;
	private String id;
	private String pw;
	private String email;
	private String name;
	private String nickname;
	private Date bday;
	private String skin_type;
	private String brand_like;
	private String addr;
	private String addr2;
	private String postcode;
	private String sex;
	private String profile_img;
	private int age_group;
	private int pouch_no;
	private String Msg; // 임시변수

	
	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public int getPouch_no() {
		return pouch_no;
	}

	public void setPouch_no(int pouch_no) {
		this.pouch_no = pouch_no;
	}

	public String getMsg() {
		return Msg;
	}

	public void setMsg(String msg) {
		Msg = msg;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getBday() {
		return bday;
	}

	public void setBday(Date bday) {
		this.bday = bday;
	}

	public String getSkin_type() {
		return skin_type;
	}

	public void setSkin_type(String skin_type) {
		this.skin_type = skin_type;
	}

	public String getBrand_like() {
		return brand_like;
	}

	public void setBrand_like(String brand_like) {
		this.brand_like = brand_like;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	public int getAge_group() {
		return age_group;
	}

	public void setAge_group(int age_group) {
		this.age_group = age_group;
	}

}
