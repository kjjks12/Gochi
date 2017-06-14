package gochi.travel.member.DAO;

import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.member.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * email에 해당하는 정보가져오기
	 * */
	@Override
	public MemberDTO searchMember(String email) {
		MemberDTO dto = sqlSession.selectOne("memberMapper.selectMember", email);
		return dto;
	}
	
	@Override
	public int naverLogin(String email, String nickname) {
		Map<String, String> map = new HashedMap();
		map.put("email", email);
		map.put("nickname", nickname);
		
		int result = sqlSession.insert("memberMapper.insertNaverLogin", map);
		
		if(result>0){
			//유저 권한 등록
			sqlSession.insert("memberMapper.insertAuth",email);
		}
		
		return result;
	}

	/**
	 * 일반유저 회원가입
	 * */
	@Override
	public int signIn(MemberDTO member) {
		int result = sqlSession.insert("memberMapper.insertMember", member);
		
		if(result>0){
			sqlSession.insert("memberMapper.insertAuth", member.getEmail());
		}
		return result;
	}
	
	/**
	 * 일반회원 로그인
	 * */
	@Override
	public MemberDTO login(String email, String password) {
		MemberDTO dto = sqlSession.selectOne("memberMapper.selectMember", email);
		return dto;
	}



}
