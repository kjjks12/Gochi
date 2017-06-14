package gochi.travel.model.memberdao;

import gochi.travel.model.memberdto.MemberDTO;

public interface MemberDAO {
	
	/**
	 * 유저 검색
	 * */
	public MemberDTO searchMember(String email);
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
