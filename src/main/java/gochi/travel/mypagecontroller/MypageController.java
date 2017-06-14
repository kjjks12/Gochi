package gochi.travel.mypagecontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gochi.travel.mypageservice.MypageService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/goInfo")
	public String gotoInfoForm(HttpSession session){
		//System.out.println("프로필로이동");
		session.setAttribute("MYPAGEDTO", mypageService.selectByEmail("kjy73845@naver.com"));
		return "ex/profile";
	}
	
	@RequestMapping("/property")
	public String gotoProperty(){
		System.out.println("내가 쓴 글로 이동");
		return "ex/my-properties";
	}
}
