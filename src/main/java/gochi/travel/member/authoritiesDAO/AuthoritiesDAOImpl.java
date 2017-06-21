package gochi.travel.member.authoritiesdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.memberdto.Authority;

@Repository
public class AuthoritiesDAOImpl implements AuthoritiesDAO {

	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 가입한 유저 권한 등록
	 * */
	@Override
	public int insertAuthority(Authority authority) {
		sqlSession.insert("memberMapper.insertAuth", authority);
		return 0;
	}

	/**
	 * 유저 권한 가져오기.
	 * */
	@Override
	public List<Authority> selectAuthorityByUserName(String email) {
		sqlSession.selectList("authoritiesMapper.selectAuthorityByUserName",email);
		return null;
	}

}
