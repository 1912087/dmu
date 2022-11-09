package com.museum.dmu.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.museum.dmu.dto.TicketDto;
import com.museum.dmu.mapper.TagPageMapper;

@Service
public class TagPageService {
	
	@Autowired
	private TagPageMapper tagpageDao;
	
	public ArrayList<TicketDto> getLists2(String dcode, String day, String dtarget) {
		ArrayList<TicketDto> list = tagpageDao.getLists2(dcode, day, dtarget);
		return list;
	}

	public ArrayList<TicketDto> learnday(String dcode, String day, String dtarget) {
		ArrayList<TicketDto> list = tagpageDao.learnday(dcode, day, dtarget);
		return list;
	}
	
//	public ArrayList<TicketDto> learndayAll(String dcode, String dtarget) {
//		ArrayList<TicketDto> list = tagpageDao.learndayAll(dcode, dtarget);
//		return list;
//	}
	

	
//	public ArrayList<TicketDto> getLists( String dcode, String dtarget) {
//		ArrayList<TicketDto> list = tagpageDao.getLists(dcode, dtarget);
//		return list;
//	}
//
//	
//	public int getLearnCount(String dtarget) {
//		return tagpageDao.getLearnCount(dtarget);
//	}
//
//	
//	public ArrayList<TicketDto> getDayList1(String dcode, String day) {
//		ArrayList<TicketDto> list = tagpageDao.getDayList1(dcode, day);
//		return list;
//	}
//	
//	public ArrayList<TicketDto> getDayList2(String dcode, String day) {
//		ArrayList<TicketDto> list = tagpageDao.getDayList2(dcode, day);
//		return list;
//	}
//	
//	public ArrayList<TicketDto> getExhibitionList(String dcode) {
//			ArrayList<TicketDto> list =	tagpageDao.getExhibitionList(dcode);
//			return list;
//	}
//	
//	public ArrayList<TicketDto> getExhibitionList1(String dcode) {
//			ArrayList<TicketDto> list =	tagpageDao.getExhibitionList1(dcode);
//			return list;
//	}
//	
//	public TicketDto getExhibition() {
//		return tagpageDao.getExhibition();
//	}
//	
//	/*
//	 * tag_page
//	 */
//	
//	public ArrayList<TicketDto> getEventContent(String dcode ) {
//		ArrayList<TicketDto> list = tagpageDao.getEventContent(dcode);
//		return list;
//	}
//	
//	public ArrayList<TicketDto> eventlist(String dplace,String dcode ) {
//		ArrayList<TicketDto> list = tagpageDao.eventlist(dplace, dcode);
//		return list;
//	}
//	
//	
//	public ArrayList<TicketDto> getDayList(String dcode, String day) {
//		ArrayList<TicketDto> list = tagpageDao.getDayList(dcode, day);
//		return list;
//	}
}
