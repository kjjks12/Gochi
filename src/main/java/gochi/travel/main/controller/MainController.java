package gochi.travel.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("*/*")
	public void url(){
		
	}
	
	/**
	 * callback
	 * */
	@RequestMapping("/login/callback")
	public String loginCallback(){
		return "login/callback";
	}
	

	
}
