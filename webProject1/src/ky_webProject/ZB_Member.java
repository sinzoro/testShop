package ky_webProject;


import java.sql.Timestamp;

public class ZB_Member {
	  
	private String name;
	private String loginId;
	private String loginPasswd;
	private String birth;
	private String sex;		// 남:m 여:f
	private String h_phone;
	private String email;
	private Timestamp reg_date;
	private String nick_name;
	private String post_n;
	private String addr1; 	// 주소1
	private String addr2; 	// 주소2
	private String line_phone;		//유선전화
	private String custom_level; 
	private String master_level;
	  
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getLoginPasswd() {
		return loginPasswd;
	}
	public void setLoginPasswd(String loginPasswd) {
		this.loginPasswd = loginPasswd;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getH_phone() {
		return h_phone;
	}
	public void setH_phone(String h_phone) {
		this.h_phone = h_phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getPost_n() {
		return post_n;
	}
	public void setPost_n(String post_n) {
		this.post_n = post_n;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getLine_phone() {
		return line_phone;
	}
	public void setLine_phone(String line_phone) {
		this.line_phone = line_phone;
	}
	public String getCustom_level() {
		return custom_level;
	}
	public void setCustom_level(String custom_level) {
		this.custom_level = custom_level;
	}
	public String getMaster_level() {
		return master_level;
	}
	public void setMaster_level(String master_level) {
		this.master_level = master_level;
	}
	
	
}


