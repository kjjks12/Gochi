package gochi.travel.travelreviewcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;
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
		if(data.equals("전체")){
			data="all";
		}else if(data.equals("친구와 함께")){
			data="friend";
		}else if(data.equals("가족과 함께")){
			data="family";
		}else if(data.equals("단체여행")){
			data="group";
		}else if(data.equals("커플")){
			data="couple";
		}else if(data.equals("나홀로여행")){
			data="alone";
		}else if(data.equals("패키지여행")){
			data="package";
		}
		
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
		
		if(data.equals("전체")){
			data="all";
		}else if(data.equals("친구와 함께")){
			data="friend";
		}else if(data.equals("가족과 함께")){
			data="family";
		}else if(data.equals("단체여행")){
			data="group";
		}else if(data.equals("커플")){
			data="couple";
		}else if(data.equals("나홀로여행")){
			data="alone";
		}else if(data.equals("패키지여행")){
			data="package";
		}
		
		List<TravelReviewDto> newTrvelReview = travelReviewService.newTrvelReview(data);
		List<TravelReviewDto> goodTrvelReview = travelReviewService.goodTravelReview(data);
			System.out.println(goodTrvelReview.size());
			map.put("newTrvelReview", newTrvelReview);
			map.put("goodTrvelReview", goodTrvelReview);
			
		
		return map;
	}	
	
	//선택된 후기 정보 가져오기
	@RequestMapping("travel_review/review_detail")
	public String riviewDetail(HttpServletRequest request){
		String index = request.getParameter("index"); //해당 글번호
		
		//후기 기본정보 가져오기 (DB TABLE : TRAVEL)
		TravelDTO travelInfo = travelReviewService.selectTravelInfo(index);
		request.getSession().setAttribute("travelInfo", travelInfo);
		
		//후기 상세정보 가져오기 (DB TABLE : TRAVEL_ITINEARY)
		List<TravelItinearyDTO> list = travelReviewService.selectTravelDetailInfo(index);
		request.getSession().setAttribute("travelDetailInfo", list);
		
		//글쓴이 정보 가져오기. (DB TABLE : MEMBER)
		MemberDTO writerInfo = travelReviewService.writerInfo(travelInfo.getEmail());
		request.getSession().setAttribute("writer", writerInfo);
		
		//체크리스트 가져오기. (DB TABEL : CHECK_LIST)
		List<CheckListDTO> checkList = travelReviewService.checkList(index);
		request.getSession().setAttribute("checkList", checkList);
		
		return "travelreview/review_detail";
	}
	
}
