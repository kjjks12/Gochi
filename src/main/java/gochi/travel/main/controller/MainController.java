package gochi.travel.main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.followmeservice.FollowmeService;
import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.traveldao.TravelDao;
import gochi.travel.model.traveldto.TravelDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	

	@Autowired
	   private FollowmeService followmeService;
	   
	   @Autowired
	      private TravelDao travelAddDao;
	   


	   @RequestMapping("/")
	   public ModelAndView index() {
	      ModelAndView mv = new ModelAndView();
	      List<FollowemeDto> flist=followmeService.followSelect();
	      List<TravelDTO> tlist = travelAddDao.list();
	      mv.addObject("flist",flist);
	      mv.addObject("tlist",tlist);
	      mv.setViewName("index");
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
