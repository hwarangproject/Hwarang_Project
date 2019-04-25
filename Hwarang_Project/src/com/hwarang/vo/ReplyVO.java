package com.hwarang.vo;

import java.sql.Date;

public class ReplyVO {
	private String reply_content;
	private String reply_img;
	private Date reply_regdate;
	private int cos_rate;
	private int product_no;
	private int member_no;
	private int root;
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	public String getReply_img() {
		return reply_img;
	}
	public void setReply_img(String reply_img) {
		this.reply_img = reply_img;
	}
	public Date getReply_regdate() {
		return reply_regdate;
	}
	public void setReply_regdate(Date reply_regdate) {
		this.reply_regdate = reply_regdate;
	}
	public int getCos_rate() {
		return cos_rate;
	}
	public void setCos_rate(int cos_rate) {
		this.cos_rate = cos_rate;
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
	public int getRoot() {
		return root;
	}
	public void setRoot(int root) {
		this.root = root;
	}
	public int getGroup_tab() {
		return group_tab;
	}
	public void setGroup_tab(int group_tab) {
		this.group_tab = group_tab;
	}
	public int getGroup_id() {
		return group_id;
	}
	public void setGroup_id(int group_id) {
		this.group_id = group_id;
	}
	public int getGroup_step() {
		return group_step;
	}
	public void setGroup_step(int group_step) {
		this.group_step = group_step;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	private int group_tab;
	private int group_id;
	private int group_step;
	private int depth;
}
