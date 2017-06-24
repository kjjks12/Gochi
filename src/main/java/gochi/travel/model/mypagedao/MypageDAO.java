package gochi.travel.model.mypagedao;

import gochi.travel.model.mypagedto.MypageDTO;

public interface MypageDAO {
	
	/**
	 * 회원 한명에 대한 정보 검색
	 * 마이페이지 화면에서 자신의 정보를 조회하는 등으로 사용
	 * 
	 */
	MypageDTO selectByEmail(String email);
	
	int updateMyInfo(MypageDTO mypageDTO);
	
	MypageDTO selectDetail(String email);
	
	int updateMyProfileImg(String profileImg,String email);
	
	int updateMyBackProfileImg(String backImg,String email);
}
