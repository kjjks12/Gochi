package gochi.travel.member.authoritiesdao;

import java.util.List;

import gochi.travel.model.memberdto.Authority;

public interface AuthoritiesDAO {
	/**
	 * 사용자 권한 등록
	 * (한 user(아이디)가 여러개의 권한을 가질 수 있다.)
	 */
	int insertAuthority(Authority authority);
	
	/**
	 * id에 해당하는 권한 검색.
	 * 권한이 여러개이므로 리턴타입 List
	 */
	List<Authority> selectAuthorityByUserName(String userName);//userName=id
}
