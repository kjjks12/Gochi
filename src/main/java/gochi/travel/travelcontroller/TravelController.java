package gochi.travel.travelcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.traveldto.TravelDTO;

@CrossOrigin(origins="*")
@Controller
public class TravelController {

	//@CrossOrigin(origins="http://www.kma.go.kr/" ,maxAge=3600,allowedHeaders="Origin,Accept,X-Requested-With,Content-Type,Access-Control-Request-Method,Access-Control-Request-Headers,Authorization")
	@RequestMapping("traveladd/travel_add")
	public ModelAndView travelAdd(TravelDTO travelDTO){
		ModelAndView mv= new ModelAndView();
		mv.setViewName("traveladd/travel_add");
		mv.addObject("travelDTO", travelDTO);
		return mv;
	}
	
}

/*
 *  response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "3600");
       // response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
        response.setHeader("Access-Control-Allow-Headers", "Origin,Accept,X-Requested-With,Content-Type,Access-Control-Request-Method,Access-Control-Request-Headers,Authorization");
        
        response.setHeader("Access-Control-Allow-Origin", "*");
 * */
