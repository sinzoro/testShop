package ky_webProject;

import java.sql.Timestamp;

public class ZB_Books {

	private String book_name; //상품명
	private String book_div1; // 대분류
	private String book_div2; // 중분류
	private String book_div3; // 소분류
	private String book_divdetail; // 세부분류
	private String book_writer; // 글쓴이
	private String book_publish; // 출판사
	private int book_price; // 가격
	private String book_descript; //주석, 설명
	private String book_productnum; // 제품번호
	private String book_publish_date; // 출판일
	private Timestamp reg_date; // 등록일
	private String book_img_link; // 이미지링크
	
	
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getBook_div1() {
		return book_div1;
	}
	public void setBook_div1(String book_div1) {
		this.book_div1 = book_div1;
	}
	public String getBook_div2() {
		return book_div2;
	}
	public void setBook_div2(String book_div2) {
		this.book_div2 = book_div2;
	}
	public String getBook_div3() {
		return book_div3;
	}
	public void setBook_div3(String book_div3) {
		this.book_div3 = book_div3;
	}
	public String getBook_divdetail() {
		return book_divdetail;
	}
	public void setBook_divdetail(String book_divdetail) {
		this.book_divdetail = book_divdetail;
	}
	public String getBook_writer() {
		return book_writer;
	}
	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}
	public String getBook_publish() {
		return book_publish;
	}
	public void setBook_publish(String book_publish) {
		this.book_publish = book_publish;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getBook_descript() {
		return book_descript;
	}
	public void setBook_descript(String book_descript) {
		this.book_descript = book_descript;
	}
	public String getBook_productnum() {
		return book_productnum;
	}
	public void setBook_productnum(String book_productnum) {
		this.book_productnum = book_productnum;
	}
	public String getBook_publish_date() {
		return book_publish_date;
	}
	public void setBook_publish_date(String book_publish_date) {
		this.book_publish_date = book_publish_date;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getBook_img_link() {
		return book_img_link;
	}
	public void setBook_img_link(String book_img_link) {
		this.book_img_link = book_img_link;
	}
	
}
