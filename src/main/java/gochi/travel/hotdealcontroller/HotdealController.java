package gochi.travel.hotdealcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.hotdealservice.HotdealService;

@Controller
public class HotdealController {
	
	@Autowired
	private HotdealService hotDealService;
	
	@RequestMapping("/hotdeal/hotdeal_main")
	
	public ModelAndView hotdeal(String query) throws Exception{
		//System.out.println("검색 쿼리:"+query);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("hotdeal/hotdeal_main");
		mv.addObject("map", hotDealService.mainPageParsing(query));
		return mv;
	}

}
