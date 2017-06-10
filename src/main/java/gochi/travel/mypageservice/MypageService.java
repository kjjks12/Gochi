package gochi.travel.mypageservice;

import gochi.travel.model.mypagedto.MypageDTO;

public interface MypageService {
	/**
	 * 회원 한명에 대한 정보 검색
	 * 마이페이지 화면에서 자신의 정보를 조회하는 등으로 사용
	 * 
	 */
	MypageDTO selectByEmail(String email);
}
