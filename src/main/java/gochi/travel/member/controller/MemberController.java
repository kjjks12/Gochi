package gochi.travel.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 유저 관련 컨트롤러
 */
@Controller
public class MemberController {

	/**
	 * 네이버 아이디로 로그인 한 경우 자동 회원가입 처리 
	 * 이미 가입이 된(네이버 아이디로 한번이라도 로그인 한) 유저라면
	 * 가입하지 않고 메인 화면으로 이동.
	 * */
	@RequestMapping("/member/naverLogin")
	public String naverLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		System.out.println(email+" "+nickname);
		return "index";
	}
	
}
