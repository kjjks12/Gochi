package gochi.travel.followmecontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gochi.travel.followmeservice.FollowmeService;
import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.traveldto.TravelDTO;

@Controller
public class FollowmeController {
		
		@Autowired
		private FollowmeService followmeService;

		@RequestMapping("/followme/followmeMain")
		public String followMeMain(HttpServletRequest request){
			//뿌려올 정보 가져오기.
			List<TravelDTO> follow = followmeService.follow();
			request.getSession().setAttribute("followList", follow);
			
			//좋아요 많은 게시물 가져오기.
			List<TravelDTO> likeFollow = followmeService.likeFollow();
			request.getSession().setAttribute("likeFollow", likeFollow);
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
