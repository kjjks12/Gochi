package gochi.travel.model.frienddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.member.dto.MemberDTO;
import gochi.travel.model.frienddto.FriendDTO;

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
	public int insertFriend(FriendDTO friendDTO) {
		int result = 0;
		/***
		 * 시퀀스 번호를 위한 일련의 과정
		 */
		String count = null;
		try{
		Object obj = sqlSession.selectOne("friendMapper.selectMaxFriend");
		if(obj==null){
			count="0";
		}else{
			count=obj+"";
		}
		friendDTO.setFriendNo(Integer.parseInt(count)+1);
		/**
		 * ================================
		 */
		friendDTO.getFriendNo();
		result = sqlSession.insert("friendMapper.insertFriend",friendDTO);
		}catch(Exception e){
			e.getMessage();
		}
		return result;
	}
	
	

}
