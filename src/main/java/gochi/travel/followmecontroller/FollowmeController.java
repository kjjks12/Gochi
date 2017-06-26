package gochi.travel.followmecontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
}
