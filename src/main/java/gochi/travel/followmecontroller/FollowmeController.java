package gochi.travel.followmecontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.followmeservice.FollowmeService;
import gochi.travel.model.followedto.FollowemeDto;

@Controller
public class FollowmeController {
		
		@Autowired
		private FollowmeService followmeService;

		@RequestMapping("/followme/followmeMain")
		public String followMeMain(){
			return "followme/followmeMain";
		}
		@RequestMapping("/followme/followmeAdd")
		public String followMeAdd(FollowemeDto followenDto){
				
				int result = followmeService.insertFollowme(followenDto);
					if(result==0){
						// 인설트 안되면 어디로갈까...
					}
					
			return "followme/followmeAdd";
		}
		
		@RequestMapping("/followme/followselect")
		public ModelAndView followSelect(){
			ModelAndView mv = new ModelAndView();
			List<FollowemeDto> list=followmeService.followSelect();
			mv.addObject("list",list);
			return mv;
		}
		
}
