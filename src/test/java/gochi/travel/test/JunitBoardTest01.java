package gochi.travel.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.model.notedto.NoteDTO;

public class JunitBoardTest01 {

	/**
	 * 마이페이지 조회 테스트
	 */
	//@Test
	public void selectMypage(){
		SqlSession session = DBUtil.getSession();
		MypageDTO mypageDTO = session.selectOne("mypageMapper.selectByEmail", "kjy73845@naver.com");
		System.out.println(mypageDTO);
		DBUtil.closeSession(session);
			
	}
	/**
	 * 친구 목록 조회 테스트
	 */
	//@Test
	public void selectFriendByEmail(){
		SqlSession session = DBUtil.getSession();
		List<FriendDTO> list = session.selectList("friendMapper.selectFriendByEmail","kjy73845@naver.com");
		for(FriendDTO dto:list){
			System.out.println(dto);
		}
		DBUtil.closeSession(session);
			
	}
	/**
	 * 친구 추가 이전에 검색을 통한 친구 찾기
	 */
	@Test
	public void selectFriend(){
		SqlSession session = DBUtil.getSession();
		Map<String,String> emails = new HashMap<>();
		emails.put("email", "kjy73845@naver.com");//해당 id
		emails.put("f_email", "kim");//해당 id의 친구목록 중에서 검색
		List<FriendDTO> list = session.selectList("friendMapper.selectFriend",emails);
		for(FriendDTO dto:list){
			System.out.println(dto);
		}
		DBUtil.closeSession(session);
			
	}
	
	/**
	 * 쪽지 목록 리스트(받은사람 email로 검색)
	 */
	//@Test
	public void selectNote(){
		SqlSession session = DBUtil.getSession();
		List<NoteDTO> list = session.selectList("noteMapper.selectByNick","kjy73845@naver.com");
		for(NoteDTO dto:list){
			System.out.println(dto);
		}
		DBUtil.closeSession(session);
	}
	
	
	
	
}
