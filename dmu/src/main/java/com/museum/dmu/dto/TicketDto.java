package com.museum.dmu.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class TicketDto {
	private int rno;
	private int dpersonnel;
	private int dprice;
	private String did;
	private String dtitle;
	private String dstart;
	private String dend;
	private String dplace;
	private String dinformation;
	private String dtime;
	private String dfile;
	private String dsfile;
	private String dcode;
	private String dtarget;
	private String enddate;
	private String dtitle2;
	private String dentertime;
	private String dnum;
	private String dpricech;
	private String mid;
	private String rdate;
	private String rtime;
	private String rtotal;
	private String rallprice;
	private String rprice;
	private String startdate;
	private MultipartFile file1;
}
