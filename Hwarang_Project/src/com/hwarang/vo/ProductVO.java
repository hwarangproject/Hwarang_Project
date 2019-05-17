package com.hwarang.vo;

public class ProductVO {
	private int product_no;
	private String brand;
	private String product_name;
	private String price;
	private String sell_link;
	private String description;
	private String cap_col;
	private double score;
	private String tag;

	private int pouch_jjim_count;
	private String brand_img;
	private String product_img;
	private int detcategory_no;
	
	private int like_10;
	private int like_20;
	private int like_30;
	private int like_40;
	private int like_50;
	private int review_cnt;
	
	// join√ﬂ∞°
	//product_name, product_img, product_no, price, brand, prod_jjim_no, member_no
	private int prod_jjim_no;
	private int member_no;
	
	
	public int getProd_jjim_no() {
		return prod_jjim_no;
	}
	public void setProd_jjim_no(int prod_jjim_no) {
		this.prod_jjim_no = prod_jjim_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getLike_10() {
		return like_10;
	}
	public void setLike_10(int like_10) {
		this.like_10 = like_10;
	}
	public int getLike_20() {
		return like_20;
	}
	public void setLike_20(int like_20) {
		this.like_20 = like_20;
	}
	public int getLike_30() {
		return like_30;
	}
	public void setLike_30(int like_30) {
		this.like_30 = like_30;
	}
	public int getLike_40() {
		return like_40;
	}
	public void setLike_40(int like_40) {
		this.like_40 = like_40;
	}
	public int getLike_50() {
		return like_50;
	}
	public void setLike_50(int like_50) {
		this.like_50 = like_50;
	}
	public int getReview_cnt() {
		return review_cnt;
	}
	public void setReview_cnt(int review_cnt) {
		this.review_cnt = review_cnt;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSell_link() {
		return sell_link;
	}
	public void setSell_link(String sell_link) {
		this.sell_link = sell_link;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCap_col() {
		return cap_col;
	}
	public void setCap_col(String cap_col) {
		this.cap_col = cap_col;
	}
	public double getScore() {
		return score;
	}
	public void setScore(double score) {
		this.score = score;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getPouch_jjim_count() {
		return pouch_jjim_count;
	}
	public void setPouch_jjim_count(int pouch_jjim_count) {
		this.pouch_jjim_count = pouch_jjim_count;
	}
	public String getBrand_img() {
		return brand_img;
	}
	public void setBrand_img(String brand_img) {
		this.brand_img = brand_img;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public int getDetcategory_no() {
		return detcategory_no;
	}
	public void setDetcategory_no(int detcategory_no) {
		this.detcategory_no = detcategory_no;
	}
	
	
}
