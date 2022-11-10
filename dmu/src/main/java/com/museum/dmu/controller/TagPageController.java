package com.museum.dmu.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.museum.dmu.dto.TicketDto;
import com.museum.dmu.service.TagPageService;

@Controller
public class TagPageController {
	
	@Autowired 
	TagPageService tagpageService;
	
//	@Autowired 
//	PageService pageService;

	// event_page.do
	 
	@RequestMapping(value="/event_page", method=RequestMethod.GET)
	public String event_page(String dcode, Model model) {
		ArrayList<TicketDto> list = tagpageService.getEventContent("event");
		
		model.addAttribute("list", list);
		return "/tag_page/event/event_page";
	 
	}
			
	@ResponseBody
	@PostMapping("/event_page_json") //produces="text/plain;charset=UTF-8"
	public String event_page_json(String dplace, HttpServletRequest request, HttpServletResponse response) 
									throws Exception{
	
		ArrayList<TicketDto> clist = new ArrayList<TicketDto>();
		if(dplace.equals("all")) {
			clist = tagpageService.getEventContent("event");
		}else {
			clist = tagpageService.getEventList(dplace, "event");
		}
		
		JsonObject job = new JsonObject();
		JsonArray jarray = new JsonArray();
		Gson gson = new Gson();
		
		for(TicketDto dto : clist) {
			JsonObject jo = new JsonObject();
			jo.addProperty("did", dto.getDid());
			jo.addProperty("dtitle", dto.getDtitle());
			jo.addProperty("dplace", dto.getDplace());
			jo.addProperty("dsfile", dto.getDsfile());
			jo.addProperty("dcode", dto.getDcode());
	
			jarray.add(jo);
		}
		job.add("list", jarray);
		return gson.toJson(job);
	
	}
			
	// event_page_det.do
	@GetMapping("/event_page_det")
	public String event_page_det() {		 
		return "/tag_page/event/event_page_det";
	}
			
	
	//-------------------------
	
	// exhibition_page.do
	@GetMapping("/exhibition_page")
	public String exhibition_page(Model model) {
		TicketDto dto = tagpageService.getExhibition();
		model.addAttribute("dto", dto);
		
		return "/tag_page/exhibition/exhibition_page";
	}
	
	// exhibition_page1.do
	@GetMapping("/exhibition_page1")
	public String exhibition_page1(Model model) {
		TicketDto dto = tagpageService.getExhibition();
		model.addAttribute("vo", dto);

		return "/tag_page/exhibition/exhibition_page1";
	}
	
	// exhibition_page.do2
	@GetMapping("/exhibition_page2")
	public String exhibition_page2() {
		return "/tag_page/exhibition/exhibition_page2";
	}	
	
//	// exhibition_past_page.do
//	@RequestMapping(value="/exhibition_past_page.do", method=RequestMethod.GET)
//	public ModelAndView exhibition_past_page() {
//		ModelAndView mv = new ModelAndView();
//		
//		ArrayList<DmuTicketVO> list = tagpageService.getEventContent("exhibition");
//		
//	 
//		mv.addObject("list", list);
//		mv.setViewName("tag_page/exhibition/exhibition_past_page");
//		return mv;
// 
//	}
	
//	//exhibition_past_ajaxlist
//	@ResponseBody
//	@RequestMapping(value="/exhibition_past_ajaxlist.do", method =RequestMethod.GET,produces="text/plain;charset=UTF-8")
//	public String exhibitionPastAjax(String day){
//		ArrayList<DmuTicketVO> list = tagpageService.getDayList("exhibition", day);
//		
//		JsonObject jobject = new JsonObject(); //DmuTicketVO
//		JsonArray jarray = new JsonArray();  //ArrayList
//		Gson gson = new Gson();
//		
//		for(DmuTicketVO vo : list){
//			JsonObject jo = new JsonObject();
//			jo.addProperty("did", vo.getDid());
//			jo.addProperty("dtitle", vo.getDtitle());
//			jo.addProperty("dplace", vo.getDplace());
//			jo.addProperty("dfile", vo.getDfile());
//			jo.addProperty("dsfile", vo.getDsfile());
//			jo.addProperty("dcode", vo.getDcode());
//			jo.addProperty("dstart", vo.getDstart());
//			jo.addProperty("dend", vo.getDend());
//			jo.addProperty("dtitle2", vo.getDtitle2());
//			jarray.add(jo);
//		}
//		jobject.add("list", jarray); 
//		
//		return gson.toJson(jobject);
//	}
//	//exhibition_past_ajaxlist1
//	@ResponseBody
//	@RequestMapping(value="/exhibition_past_ajaxlist1.do", method =RequestMethod.GET,produces="text/plain;charset=UTF-8")
//	public String exhibitionPastAjax1(String day){
//		
//		
//		
//		ArrayList<DmuTicketVO> list = tagpageService.getDayList1("exhibition", day);
//		
//		JsonObject jobject = new JsonObject(); //DmuTicketVO
//		JsonArray jarray = new JsonArray();  //ArrayList
//		Gson gson = new Gson();
//		
//		for(DmuTicketVO vo : list){
//			JsonObject jo = new JsonObject();
//			jo.addProperty("did", vo.getDid());
//			jo.addProperty("dtitle", vo.getDtitle());
//			jo.addProperty("dplace", vo.getDplace());
//			jo.addProperty("dfile", vo.getDfile());
//			jo.addProperty("dsfile", vo.getDsfile());
//			jo.addProperty("dcode", vo.getDcode());
//			jo.addProperty("dstart", vo.getDstart());
//			jo.addProperty("dend", vo.getDend());
//			jo.addProperty("dtitle2", vo.getDtitle2());
//			jarray.add(jo);
//		}
//		jobject.add("list", jarray); 
//		
//		return gson.toJson(jobject);
//	}
//	//exhibition_past_ajaxlist2
//	@ResponseBody
//	@RequestMapping(value="/exhibition_past_ajaxlist2.do", method =RequestMethod.GET,produces="text/plain;charset=UTF-8")
//	public String exhibitionPastAjax2(String day){
//		
//		ArrayList<DmuTicketVO> list = tagpageService.getDayList2("exhibition", day);
//		
//		JsonObject jobject = new JsonObject(); //DmuTicketVO
//		JsonArray jarray = new JsonArray();  //ArrayList
//		Gson gson = new Gson();
//		
//		for(DmuTicketVO vo : list){
//			JsonObject jo = new JsonObject();
//			jo.addProperty("did", vo.getDid());
//			jo.addProperty("dtitle", vo.getDtitle());
//			jo.addProperty("dplace", vo.getDplace());
//			jo.addProperty("dfile", vo.getDfile());
//			jo.addProperty("dsfile", vo.getDsfile());
//			jo.addProperty("dcode", vo.getDcode());
//			jo.addProperty("dstart", vo.getDstart());
//			jo.addProperty("dend", vo.getDend());
//			jo.addProperty("dtitle2", vo.getDtitle2());
//			jarray.add(jo);
//		}
//		jobject.add("list", jarray); 
//		
//		return gson.toJson(jobject);
//	}
//	
//	// exhibition_past_page1.do
//	@RequestMapping(value="/exhibition_past_page1.do", method=RequestMethod.GET)
//	public ModelAndView exhibition_past_page1() {
//		ModelAndView mv = new ModelAndView();
//				
//		ArrayList<DmuTicketVO> list = tagpageService.getExhibitionList("exhibition");
//				
//			 
//		mv.addObject("list", list);
//		mv.setViewName("tag_page/exhibition/exhibition_past_page1");
//		return mv;
//	 
//	}
//	
//	// exhibition_past_page2.do
//	@RequestMapping(value="/exhibition_past_page2.do", method=RequestMethod.GET)
//	public ModelAndView exhibition_past_page2() {
//		ModelAndView mv = new ModelAndView();
//						
//		ArrayList<DmuTicketVO> list = tagpageService.getExhibitionList1("exhibition");
//						
//					 
//		mv.addObject("list", list);
//		mv.setViewName("tag_page/exhibition/exhibition_past_page2");
//		return mv;
//			 
//	}	
//	
//	// exhibition_page_det.do
//	@RequestMapping(value="/exhibition_page_det.do", method=RequestMethod.GET)
//	public ModelAndView exhibition_page_det() {
//		ModelAndView mv = new ModelAndView();
//		DmuTicketVO vo = tagpageService.getExhibition();
//		mv.addObject("vo",vo);
//		mv.setViewName("tag_page/exhibition/exhibition_page_det");
//		return mv;
//	}	
	
	// learn_page.do
	@GetMapping("/learn_page/{dtarget}")
	public String learn_page(@PathVariable String dtarget, Model model) {
//		ModelAndView mv = new ModelAndView();
//		
//		ArrayList<TicketDto> list = tagpageService.getLists2("learn", dtarget);
//		ArrayList<TicketDto> list2 = tagpageService.learndayAll("learn", dtarget);
//		int count = tagpageService.getLearnCount(dtarget);
//		
//		model.addAttribute("dtarget", dtarget);
//		mv.addObject("count",count);
//		mv.addObject("list",list);
//		mv.addObject("list2",list2);
//		mv.setViewName("tag_page/learn/learn_page");
		
		model.addAttribute("dtarget", dtarget);
		return "/tag_page/learn/learn_page";
	}
	
	// learn_page_ajax.do
	@ResponseBody
	@GetMapping("/learn_page_ajaxlist/{day}/{dtarget}")//, produces="text/plain;charset=UTF-8"
	public String learn_page_ajax(@PathVariable String day, @PathVariable String dtarget){
		ArrayList<TicketDto> list;
		list = tagpageService.getLists2("learn", day, dtarget);
		
		JsonObject jobject = new JsonObject(); //DmuTicketVO
		JsonArray jarray = new JsonArray();  //ArrayList
		Gson gson = new Gson();
		
		for(TicketDto vo : list){
			JsonObject jo = new JsonObject();
			jo.addProperty("did", vo.getDid());
			jo.addProperty("dtitle", vo.getDtitle());
			jo.addProperty("dplace", vo.getDplace());
			jo.addProperty("dfile", vo.getDfile());
			jo.addProperty("dsfile", vo.getDsfile());
			jo.addProperty("dcode", vo.getDcode());
			jo.addProperty("dstart", vo.getDstart());
			jo.addProperty("dend", vo.getDend());
			jo.addProperty("dtitle2", vo.getDtitle2());
			jo.addProperty("dnum", vo.getDnum());
			jo.addProperty("dpersonnel", vo.getDpersonnel());
			jo.addProperty("dtime", vo.getDtime());
			jo.addProperty("dprice", vo.getDprice());
			
			
			jarray.add(jo);
		}
		jobject.add("list", jarray); 
		
		return gson.toJson(jobject);
	}
	
	@ResponseBody
	@RequestMapping(value="/learn_past_ajax/{day}/{dtarget}", method =RequestMethod.GET,produces="text/plain;charset=UTF-8")
	public String learn_past_ajax(@PathVariable String day, @PathVariable String dtarget){
		
		ArrayList<TicketDto> list = tagpageService.learnday("learn", day, dtarget);
		
		JsonObject jobject = new JsonObject(); //DmuTicketVO
		JsonArray jarray = new JsonArray();  //ArrayList
		Gson gson = new Gson();
		for(TicketDto vo : list){
			JsonObject jo = new JsonObject();
			jo.addProperty("did", vo.getDid());
			jo.addProperty("dtitle", vo.getDtitle());
			jo.addProperty("dplace", vo.getDplace());
			jo.addProperty("dfile", vo.getDfile());
			jo.addProperty("dsfile", vo.getDsfile());
			jo.addProperty("dcode", vo.getDcode());
			jo.addProperty("dstart", vo.getDstart());
			jo.addProperty("dend", vo.getDend());
			jo.addProperty("dtarget", vo.getDtarget());
			jo.addProperty("dinformation", vo.getDinformation());
			jarray.add(jo);
		}
		jobject.add("list", jarray); 
		
		return gson.toJson(jobject);
	}
}
