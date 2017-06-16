package gochi.travel.memberservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.member.authoritiesDAO.AuthoritiesDAO;
import gochi.travel.member.util.Constants;
import gochi.travel.model.memberdao.MemberDAO;
import gochi.travel.model.memberdto.Authority;
import gochi.travel.model.memberdto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	
	@Autowired
	AuthoritiesDAO authDao;
	
	/**
	 * 네이버 아이디로 로그인한 유저.
	 * */
	@Override
	public int naverLogin(String email, String nickname) {
		MemberDTO dto = dao.searchMember(email);
		int result = 1;
		if(dto!=null){
			System.out.println("dto저장되어있음");
		}else{
			result = dao.naverLogin(email,nickname);
			
			//권한 등록
			if(result>0){
				System.out.println("회원가입 성공");
			}else{
				System.out.println("회원가입 실패");
			}
		}
		
		return result;
	}

	
	/**
	 * 일반 회원 회원가입
	 * */
	@Override
	public int signIn(MemberDTO member) {
		MemberDTO dto = dao.searchMember(member.getEmail());
		
		if(dto!=null){
			System.out.println("이미가입되어있음.");
		}else{
			dao.signIn(member);
		}
		return 0;
	}

	
	/**
	 * 일반회원 로그인
	 * */
	@Override
	public MemberDTO login(String email, String password) {
		MemberDTO dto = dao.login(email, password);
		return dto;
	}
	

}
