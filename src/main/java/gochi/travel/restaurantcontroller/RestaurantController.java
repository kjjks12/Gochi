package gochi.travel.restaurantcontroller;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;


import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.restaurantservice.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

	@Autowired
	RestaurantService restaurantService;

	@RequestMapping("/insert")
	public String insert(HttpServletRequest request,  RestaurantDTO dto) {
		String classification = request.getParameter("category2");
		String restaurantName = request.getParameter("food-name");
		String area = request.getParameter("food-location");
		String operatingTime = request.getParameter("food-time");
		String holiday = request.getParameter("food-holiday");
		String phone = request.getParameter("food-phone");
		String explanation = request.getParameter("food-info");
		String remark = request.getParameter("food-remark");
		
		MemberDTO email = (MemberDTO)request.getSession().getAttribute("dto");
		int result = restaurantService.insertRestaurant(
				new RestaurantDTO(classification, area, explanation, restaurantName, operatingTime, holiday, phone, email.getEmail() ,remark));
		
		return "redirect:/restaurant/restaurant";
	}
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public List<RestaurantDTO> select(HttpServletRequest request) {
		List<RestaurantDTO> list = restaurantService.select();
		return list;
	}
	
	@RequestMapping("/categorySelect")
	@ResponseBody
	public List<RestaurantDTO> categorySelect(HttpServletRequest request, String classification) {
		System.out.println("들어오기 실패인가?");
		List<RestaurantDTO> list = restaurantService.categorySelect(classification);
		return list;
	}	
	
	@RequestMapping("/restaurant/imageSave")
	@ResponseBody
	public String saveImage(String img){
		System.out.println("들어옵니까?");
		System.out.println(img);
		return "index";
	}
	
	@RequestMapping("/restaurant/post")
	public String post(HttpServletRequest request){
		String email = request.getParameter("email");
		String subject = request.getParameter("food-name");
		String content = request.getParameter("message");
		System.out.println(email+" "+subject+" "+content);
		System.out.println("포스트 들어옴");
		return "index";
	}
	@RequestMapping("/heart")
	@ResponseBody
	public RestaurantDTO heart(HttpServletRequest request, String restaurantNo)throws Exception {
		RestaurantDTO dto = restaurantService.heart(restaurantNo, true);	
		return dto;
		
	}
	
	@RequestMapping("/detail")
	public String detailView(HttpServletRequest request){
		
		String readNu = request.getParameter("index");
		System.out.println(readNu);
		restaurantService.readNum(Integer.parseInt(readNu));
		
		return "restaurant/detailRestaurant";
	}
	
}