package gochi.travel.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	
	
	
	@RequestMapping("*/*")
	public void url(){}
	
	@RequestMapping("/a")
	public String junTest(){
		return "traveladd/map_plan/map_plan";
	}
	
	
	/**
	 * callback
	 * */
	@RequestMapping("/login/callback")
	public String loginCallback(){
		return "login/callback";
	}
	

	
}
