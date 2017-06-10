package gochi.travel.model.frienddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.frienddto.FriendDTO;

@Repository
public class FriendDAOImpl implements FriendDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<FriendDTO> selectFriendList(String email) {
		return sqlSession.selectList("friendMapper.selectFriendList", email);
	}

}
