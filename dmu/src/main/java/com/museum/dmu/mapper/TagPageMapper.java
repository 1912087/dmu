package com.museum.dmu.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.museum.dmu.dto.TicketDto;

@Mapper
public interface TagPageMapper {
	ArrayList<TicketDto> getLists2(@Param("dcode") String dcode, @Param("day") String day, @Param("dtarget") String dtarget);
	ArrayList<TicketDto> learnday(@Param("dcode") String dcode, @Param("day") String day, @Param("dtarget") String dtarget);
	int getLearnCount(String dtarget);

	//ArrayList<TicketDto> learndayAll(String dcode, String dtarget);
//	ArrayList<TicketDto> getLists( String dcode, String dtarget);
//	ArrayList<TicketDto> getDayList1(String dcode, String day);
//	ArrayList<TicketDto> getDayList2(String dcode, String day);
//	ArrayList<TicketDto> getExhibitionList(String dcode);
//	ArrayList<TicketDto> getExhibitionList1(String dcode);
	TicketDto getExhibition();
	ArrayList<TicketDto> getDayList(@Param("dcode") String dcode, @Param("day") String day);
	
	//learn
	ArrayList<TicketDto> getEventContent(String dcode);
	ArrayList<TicketDto> getEventList(@Param("dplace") String dplace, @Param("dcode") String dcode);
}
