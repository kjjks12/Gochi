package gochi.travel.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gochi.travel.member.dto.MemberDTO;
import gochi.travel.member.service.MemberService;

/**
 * 유저 관련 컨트롤러
 */
@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	/**
	 * 네이버 아이디로 로그인 한 경우 자동 회원가입 처리 
	 * 이미 가입이 된(네이버 아이디로 한번이라도 로그인 한) 유저라면
	 * 가입하지 않고 메인 화면으로 이동.
	 * */
	@RequestMapping("/member/naverLogin")
	public String naverLogin(HttpServletRequest request) {
		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");
		int result = service.naverLogin(email,nickname);
		
		if(result>0){
			MemberDTO dto = service.login(email, "");
			request.getSession().setAttribute("dto", dto);
		}
		return "index";
	}
	
	/**
	 * 회원가입
	 * */
	@RequestMapping("/member/SignIn")
	public String signIn(HttpServletRequest request){
		String email = request.getParameter("email-sign");
		String nickname = request.getParameter("nickname");
		String password = request.getParameter("password-sign");
		
		service.signIn(new MemberDTO(email, password, nickname, null, null, null, null));
		return "index";
	}
	
	/**
	 * 일반회원 로그인
	 * */
	@RequestMapping("/member/Login")
	public String login(HttpServletRequest request,HttpServletResponse response){
		String email = request.getParameter("user-log");
		String password = request.getParameter("password-log");
		MemberDTO dto = service.login(email, password);
		if(dto==null){
			return "index"; //로그인이 되지 않았을 때 이동경로 바꾸면 다른곳으로 이동 가능함. 
		}else if(dto.getPassword().equals(password)){
			request.getSession().setAttribute("dto", dto);
			System.out.println("로그인성공");
		}
		
		return "index";
	}
	
	@RequestMapping("/member/logout")
	public String logout(HttpServletRequest request){
		request.getSession().removeAttribute("dto");
		return "index";
	}
	
}
