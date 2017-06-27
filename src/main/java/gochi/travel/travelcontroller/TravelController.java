package gochi.travel.travelcontroller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldao.TravelDao;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;
import gochi.travel.mypageservice.MypageServiceImpl;

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
		mv.setViewName("traveladd/travel_add");
		mv.addObject("travelDTO", travelDTO);
		System.out.println("여행번호"+travelDTO.getTravelNo());
		return mv;
	}


	@RequestMapping("traveladd/travelitinearySelectAll")
	@ResponseBody
	public List<TravelItinearyDTO> travelitinearySelectAll(@RequestParam(value="travelNo", defaultValue="0")int travelNo){

		
		return 	travelAddDao.travelitinearySelectAll(travelNo);
	}
	
	
	

	@RequestMapping("traveladd/travelItineary")
	@ResponseBody
	public TravelItinearyDTO travelItineary(TravelItinearyDTO travelItinearyDTO){
		
		System.out.println("여행 번호 :"+travelItinearyDTO.getTravelNo());
		System.out.println("여행 일정번호 :"+travelItinearyDTO.getItinearyNo());
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		travelAddDao.travelItinearySave(travelItinearyDTO);
		return travelItinearyDTO;
	}	
	
	@RequestMapping("traveladd/selectTravelItineary")
	@ResponseBody
	public TravelItinearyDTO selectTravelItineary(@RequestParam(value="itinearyNo", defaultValue="0")int itinearyNo){
		System.out.println("========수정할 정보============");
		System.out.println("여행일정 번호:"+itinearyNo);
		TravelItinearyDTO travelItinearyDTO=travelAddDao.selectTravelItineary(itinearyNo);
		System.out.println("여행일정 제목:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("여행시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("여행끝시간:"+travelItinearyDTO.getEndTime());
		
		return 	travelAddDao.selectTravelItineary(itinearyNo);
	}	

@RequestMapping("traveladd/travelItinearyUpdate")
	@ResponseBody
	public TravelItinearyDTO travelItinearyUpdate(TravelItinearyDTO travelItinearyDTO){
		System.out.println("========수정된 정보============");
		System.out.println("여행 일정번호 :"+travelItinearyDTO.getItinearyNo());
		System.out.println("여행 번호 :"+travelItinearyDTO.getTravelNo());
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		travelAddDao.travelItinearyUpdate(travelItinearyDTO);
		return travelItinearyDTO;
	}	
	
@RequestMapping("traveladd/travelItinearyDelete")
@ResponseBody
public int travelItinearyDelete( @RequestParam(value="itinearyNo", defaultValue="0")int itinearyNo){
	
	return travelAddDao.travelItinearyDelete(itinearyNo);
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
   
   @RequestMapping("traveladd/deleteIcon")
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
   
 
   
   
   @RequestMapping("/updateItinearyTitle")
	public String updateItinearyTitle(String title,int travelNo){
	   System.out.println("여행제목 : "+title);
	   System.out.println("글번호 : "+travelNo);
	   travelAddDao.updateItinearyTitle(title, travelNo);
	  return "index";//IOexception발생 방지하기위한 것(임의의 jsp주소를 작성)
	}
   
   @RequestMapping("traveladd/savebtn")
   public String savebtn(@RequestParam(value="travelNo")int travelNo,
		   @RequestParam(value="briefStory")String briefStory,
		   @RequestParam(value="thema")String thema,
		   @RequestParam(value="travelStartDay")String travelStartDay,
		   @RequestParam(value="travelEndDay")String travelEndDay){
	   
	   System.out.println("진입");
	   travelAddDao.savebtn(new TravelDTO(travelNo, thema, travelStartDay, travelEndDay, briefStory));
	   
	   
	   return "redirect:/travelreview/travelreview_main?data=all";
   }
   
   
  @RequestMapping(value="/updateTravelCover/{travelNo}")
	public String updateTravelCover(@RequestParam MultipartFile travelCoverImgFile,HttpSession session,TravelDTO dto, @PathVariable String travelNo){
	 System.out.println("수정하고자 하는 글번호 : "+travelNo);
	   travelCoverImgFile = dto.getTravelCoverImgFile();
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		String path = session.getServletContext().getRealPath("/resources/img/travel/travelCover/"+travelNo);
		
		System.out.println("경로 : "+path);
		
		if(travelCoverImgFile != null){
			String fileName = travelCoverImgFile.getOriginalFilename();
			dto.setTravelCoverImgFile(travelCoverImgFile);
		try{
			//travelCoverImgFile.transferTo(new File(path+"/"+memberDTO.getEmail()+"/"+travelCoverImgFile.getOriginalFilename()));
			File file = new File(path+"/"+memberDTO.getEmail()+"/"+fileName);
			if(!file.exists()){
				file.mkdirs();
			}
			travelCoverImgFile.transferTo(file);
			
			//System.out.println("여행일정 커버 이미지 수정 쿼리문 이전");
			//myPageService.updateMyProfileImg(fileName, memberDTO.getEmail());
			travelAddDao.updateTravelCover(fileName, memberDTO.getEmail(),travelNo);
			}catch(Exception e){}
		}
		//return "redirect:/mypage/goInfo/"+memberDTO.getEmail();
		//return memberDTO.getEmail();
		return "index";
	}
  
  
  
  
  
  
   
}
