package gochi.travel.travelcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;

@CrossOrigin(origins="*")
@Controller
public class TravelController {

	//@CrossOrigin(origins="http://www.kma.go.kr/" ,maxAge=3600,allowedHeaders="Origin,Accept,X-Requested-With,Content-Type,Access-Control-Request-Method,Access-Control-Request-Headers,Authorization")
	@RequestMapping("traveladd/travel_add")
	public ModelAndView travelAdd(TravelDTO travelDTO){
		ModelAndView mv= new ModelAndView();
		mv.setViewName("traveladd/travel_add/editor");
		//System.out.println("테마:"+travelDTO.getThema());
		mv.addObject("travelDTO", travelDTO);
		return mv;
	}

	@RequestMapping("traveladd/travelItineary")
	@ResponseBody
	public TravelItinearyDTO travelItineary(TravelItinearyDTO travelItinearyDTO){
	 
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		return travelItinearyDTO;
	}	
	
	
	
}

/*
 * response.setHeader("Access-Control-Allow-Methods",
 * "POST, GET, OPTIONS, DELETE"); response.setHeader("Access-Control-Max-Age",
 * "3600"); // response.setHeader("Access-Control-Allow-Headers",
 * "x-requested-with"); response.setHeader("Access-Control-Allow-Headers",
 * "Origin,Accept,X-Requested-With,Content-Type,Access-Control-Request-Method,Access-Control-Request-Headers,Authorization"
 * );
 * 
 * response.setHeader("Access-Control-Allow-Origin", "*");
 */
