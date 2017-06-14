package gochi.travel.memberservice;

import gochi.travel.model.memberdto.MemberDTO;

public interface MemberService {

	/**
	 * 네이버 아이디로 로그인 된 경우
	 * */
	public int naverLogin(String email, String nickname);
	
	/**
	 * 일반회원 회원가입
	 * */
	public int signIn(MemberDTO member);
	
	/**
	 * 일반회원 로그인
	 * */
	public MemberDTO login(String email, String password);
}
