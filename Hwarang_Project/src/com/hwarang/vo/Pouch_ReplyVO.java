package com.hwarang.vo;

import java.util.*;

public class Pouch_ReplyVO {
/*
 			이름                                  널?       유형     
			--------------                        -------- ------ 
			POUCH_REPLY_NO   NOT NULL NUMBER 
			POUCH_NO               NOT NULL NUMBER 
			CONTENT                  NOT NULL CLOB   
			REGDATE                                    DATE   
			MEMBER_NO                              NUMBER 
 */
	private int pouch_reply_no;
	private int pouch_no;
	private String content;
	private Date regdate;
	private int member_no;
	
	// join 추가
		private String profile_img;
		private String id;
		private String sex;
		private String skin_type;
		private String age_group;
	
	
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
	public int getPouch_reply_no() {
		return pouch_reply_no;
	}
	public void setPouch_reply_no(int pouch_reply_no) {
		this.pouch_reply_no = pouch_reply_no;
	}
	public int getPouch_no() {
		return pouch_no;
	}
	public void setPouch_no(int pouch_no) {
		this.pouch_no = pouch_no;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
}
