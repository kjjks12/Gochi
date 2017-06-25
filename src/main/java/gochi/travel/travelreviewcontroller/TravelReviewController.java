package gochi.travel.travelreviewcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.travelreviewdto.TravelReviewDto;
import gochi.travel.travelreviewservice.TravelReviewService;

@Controller
public class TravelReviewController {

		@Autowired 	
		private TravelReviewService travelReviewService;

		/* 후기 초기화면 컨트롤 */
		// data 를 받을 필요는 없지만 동적쿼리를 사용하기에 null 이 들어가도 상관없음
	@RequestMapping("/travelreview/travelreview_main")
	public ModelAndView travelMain(String data){
		
		
		System.out.println(data +"111111111" );
		
		
		List<TravelReviewDto>  newTrvelReview = travelReviewService.newTrvelReview(data);
		List<TravelReviewDto>  goodTrvelReview = travelReviewService.goodTravelReview(data);
			
		ModelAndView mv= new ModelAndView();
		mv.addObject("newTrvelReview", newTrvelReview);
		mv.addObject("goodTrvelReview", goodTrvelReview);
		mv.setViewName("travelreview/review");
		return mv;
	}	
	
	/* 후기 초기화면 컨트롤 */
	@RequestMapping("/travelreview/travelreviewData_main")
	@ResponseBody
	public Map<String, List<TravelReviewDto>> travelreviewData(String data){
		System.out.println(data +"22222222" );
		Map<String, List<TravelReviewDto>> map = new HashMap<>();
			
		List<TravelReviewDto> newTrvelReview = travelReviewService.newTrvelReview(data);
		List<TravelReviewDto> goodTrvelReview = travelReviewService.goodTravelReview(data);
			System.out.println(goodTrvelReview.size());
			map.put("newTrvelReview", newTrvelReview);
			map.put("goodTrvelReview", goodTrvelReview);
			
		
		return map;
	}	
	
}
