package gochi.travel.model.frienddao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.memberdto.MemberDTO;

@Repository
public class FriendDAOImpl implements FriendDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<FriendDTO> selectFriendList(String email) {
		return sqlSession.selectList("friendMapper.selectFriendList", email);
	}

	@Override
	public List<MemberDTO> selectMemberList(String keyword) {
		return sqlSession.selectList("friendMapper.selectMember", keyword);
	}

	@Override
	public Map<String,String> insertFriend(FriendDTO friendDTO) {
		int result = 0;
		/***
		 * 시퀀스 번호를 위한 일련의 과정
		 */
		String count = null;
		int seqno = 0;
		/**
		 * Map 구현 사유 :
		 * 결과값과 더불어 친구번호를 리턴하기 위해
		 */
		Map<String,String> map = new HashMap<>();
		try{
		Object obj = sqlSession.selectOne("friendMapper.selectMaxFriend");
		if(obj==null){
			count="0";
		}else{
			count=obj+"";
		}
		seqno = Integer.parseInt(count)+1;
		friendDTO.setFriendNo(seqno);
		map.put("seqno", seqno+"");
		/**
		 * ================================
		 */
		friendDTO.getFriendNo();
		result = sqlSession.insert("friendMapper.insertFriend",friendDTO);
		map.put("result", result+""); // int -> String 화 
		}catch(Exception e){
			e.getMessage();
		}
		return map;
	}

	@Override
	public int updateFriendAuth(int friendNo) {
		return sqlSession.update("friendMapper.updateFriendAuth", friendNo);
	}

	@Override
	public int deleteFriendRequest(int friendNo) {
		return sqlSession.delete("friendMapper.deleteFriendRequest", friendNo);
	}

	@Override
	public boolean selectFriendDuplicate(String email,String keyword) {
		Map<String,String> map = new HashMap<>();
		map.put("email", email);
		map.put("keyword", keyword);
		return sqlSession.selectOne("friendMapper.selectFriendDuplicate", map);
	}

	@Override
	public MemberDTO selectMineFriend(String email) {
		return sqlSession.selectOne("friendMapper.selectMineFriend", email);
	}
	
	
}
