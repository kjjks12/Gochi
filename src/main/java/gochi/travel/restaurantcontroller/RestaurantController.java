package gochi.travel.restaurantcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestaurantController {
	
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
}
