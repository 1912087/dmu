package com.museum.dmu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	//@Autowired TagPageServiceImpl tagpageService;
	
	@GetMapping("/")
	public String root() {
		return "redirect:/index";
	}
	
	@GetMapping("/index")
	public String index() {
//		ModelAndView mv = new ModelAndView();
//		DmuTicketVO vo = tagpageService.getExhibition();
//		mv.addObject("vo",vo);
		return "/index";
	}
	
	@GetMapping("/header")
	public String header() {
		return "/header";
	}
	
	@GetMapping("/footer")
	public String footer() {
		return "/footer";
	}


	@GetMapping("/visit_main")
	public String visit_main() {
		return "/visit/visit_main";
	}
	@GetMapping("/visit_info")
	public String visit_info() {
		return "/visit/visit_info";
	}
	
	@GetMapping("/visit_map1")
	public String visit_map1() {
		return "/visit/visit_map1";
	}


	@GetMapping("/sitemap")
	public String sitemap() {
		return "/sitemap";
	}
	


	@GetMapping("/terms_media")
	public String terms_media() {
		return "/terms/terms_media";
	}
	
	@GetMapping("/terms_privacy")
	public String terms_privacy() {
		return "/terms/terms_privacy";
	}
	
	@GetMapping("/terms_terms")
	public String terms_terms() {
		return "/terms/terms_terms";
	}
}
