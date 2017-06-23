package gochi.travel.travelcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldao.TravelDao;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;

@CrossOrigin(origins="*")

@Controller
public class TravelController {

	@Autowired
	private TravelDao travelAddDao;

	@RequestMapping("traveladd/travel_add")
	public ModelAndView travel(HttpSession session,TravelDTO travelDTO){
		MemberDTO memberDTO=(MemberDTO) session.getAttribute("dto");
		if(memberDTO!=null){
			travelDTO.setEmail(memberDTO.getEmail());
		}
		travelAddDao.initTravelInfoSave(travelDTO);
		System.out.println("테마:"+travelDTO.getThema());
		ModelAndView mv= new ModelAndView();
		mv.setViewName("traveladd/travel_add/editor");
		mv.addObject("travelDTO", travelDTO);
		System.out.println("여행번호"+travelDTO.getTravelNo());
		return mv;
	}

/*	
	@RequestMapping("traveladd/travel_add")
	public ModelAndView travelAdd(TravelDTO travelDTO){
		System.out.println("ggg");
		System.out.println("traveladd:"+travelDTO.getThema());
		ModelAndView mv= new ModelAndView();
		mv.setViewName("traveladd/travel_add/editor");
		mv.addObject("travelDTO", travelDTO);
		return mv;
	}

*/
	
	

	@RequestMapping("traveladd/travelItineary")
	@ResponseBody
	public TravelItinearyDTO travelItineary(TravelItinearyDTO travelItinearyDTO){
		
		System.out.println("여행 번호 :"+travelItinearyDTO.getTravelNo());
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		travelAddDao.travelItinearySave(travelItinearyDTO);
		return travelItinearyDTO;
	}	
	
	@RequestMapping("traveladd/travelItineary")
	@ResponseBody
	public TravelItinearyDTO selectTravelItineary(@RequestParam(value="itinearyNo")int itinearyNo){
		
		System.out.println("itinearyNo:"+itinearyNo);
		TravelItinearyDTO travelItinearyDTO=travelAddDao.selectTravelItineary(itinearyNo);
		
		System.out.println("11:"+travelItinearyDTO.getTravelItinearyTitle());
		
		return 	travelAddDao.selectTravelItineary(itinearyNo);
	}	

	@RequestMapping("traveladd/travelItinearyUpdate")
	@ResponseBody
	public TravelItinearyDTO travelItinearyUpdate(TravelItinearyDTO travelItinearyDTO){
		System.out.println("========수정============");
		System.out.println("여행 번호 :"+travelItinearyDTO.getTravelNo());
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		travelAddDao.travelItinearySave(travelItinearyDTO);
		return travelItinearyDTO;
	}	
	
	

	/*체크리스트*/
	@RequestMapping("traveladd/checkList")
	@ResponseBody
	public List<String> travelAddDelteCeckList(HttpServletRequest request,String check, String item,int travel_no,String category){
		HttpSession session = request.getSession();
			/*System.out.println(check);
			System.out.println(item); 넘어옴!*/
			
		
		/*서비스를 가지않고 dao 로 바로이동 로직이 딱히 필요없기에!*/
		
			CheckListDTO checkList = new CheckListDTO(travel_no, category, item, check);
			List<String> selectCheckList;
			CheckListDTO overlapCheckDTO = new CheckListDTO(travel_no, item);
			
			if(check.equals("false")){
				travelAddDao.CeckList(checkList);
				selectCheckList = travelAddDao.selectCheckList(travel_no);
			}else{
		
			String overlap = travelAddDao.overLapCheck(overlapCheckDTO);
					if(overlap != null){
						selectCheckList = travelAddDao.selectCheckList(travel_no);
					}
					
					else{
					travelAddDao.CeckList(checkList); 
						selectCheckList = travelAddDao.selectCheckList(travel_no);
						
					}
					
			}
			return selectCheckList;
	}
	
	@RequestMapping("/deleteIcon")
	@ResponseBody
	public List<String> deleteIcon(HttpServletRequest request,String check, String item,int travel_no){
		HttpSession session = request.getSession();
		
		System.out.println( "item=" + item);
		System.out.println();
			CheckListDTO deleteCheckBox = new CheckListDTO(travel_no, "null", item, "false");// 강제적으로 false넣어줌
			int result = travelAddDao.CeckList(deleteCheckBox); 
				System.out.println(result +"삭제됬나???/");
			List<String> selectCheckList = travelAddDao.selectCheckList(travel_no);
			System.out.println("리스트의 길이"+selectCheckList.size());
			
			session.setAttribute("selectCheckList", selectCheckList);
				
		return selectCheckList;
	}
	
	
	
	
	
}

