package com.museum.dmu.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class NoticeDto {
	private int rno;
	private String nid;
	private String ncategory;
	private String ntitle;
	private String ncontent;
	private String ndate;
	private String nfile;
	private String nsfile;
	private MultipartFile file1;
}
