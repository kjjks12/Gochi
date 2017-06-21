package gochi.travel.restaurantcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.restaurantservice.RestaurantService;

@Controller
@RequestMapping("/restaurant")
public class RestaurantController {

	@Autowired
	RestaurantService restaurantService;

	@RequestMapping("/insert")
	public String insert(HttpServletRequest request) {
		System.out.println("등록부분들어옴?");
		String classification = request.getParameter("category2");
		String restaurantName = request.getParameter("food-name");
		String area = request.getParameter("food-location");
		String operatingTime = request.getParameter("food-time");
		String holiday = request.getParameter("food-holiday");
		String phone = request.getParameter("food-phone");
		String explanation = request.getParameter("food-info");
		String remark = request.getParameter("food-remark");
		System.out.println(remark);
		int result = restaurantService.insertRestaurant(
				new RestaurantDTO(classification, area, explanation, restaurantName, operatingTime, holiday, phone,remark));
		System.out.println("결과 값 :" +result);
		return "redirect:/restaurant/restaurant";
	}
	
	@RequestMapping("/selectAll")
	@ResponseBody
	public List<RestaurantDTO> select() {
		System.out.println("들어오나?");
		List<RestaurantDTO> list = restaurantService.select();
		return list;
	}
	
	
}

