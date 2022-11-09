package com.museum.dmu.dto;

import lombok.Data;

@Data
public class MemberDto {
	private int rno;
	private String mid;
	private String pass;
	private String nationality;
	private String mname;
	private String gender;
	private String email;
	private String birth;
	private String pnumber;
	private String zonecode;
	private String addr1;
	private String addr2;
	private String terms;
	private String older;
	private String consent;
	private String unregister;
	private String status;
	private String ddate;
	
	private String email1;
	private String email2;
	private String pnum1;
	private String pnum2;
	private String pnum3;
	private String year;
	private String month;
	private String day;
	private String mid_security;	

	public String getEmail() {
		if(email == null) {
			return email1 + "@" + email2;
		}else {
			return email;
		}
	}
	
	public String getPnumber() {
		if(pnumber == null) {
			return pnum1 + "-" + pnum2 + "-" + pnum3;
		}else {
			return pnumber;
		}
	}
	
	public String getBirth() {
		if(birth == null) {
			return year + "-" + month + "-" + day;
		}else {
			return birth;
		}
	}
	
}
