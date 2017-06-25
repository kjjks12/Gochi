package gochi.travel.model.followmedao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.followedto.FollowemeDto;

@Repository
public class FollowmeDaoImpl implements FollowemeDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertFollowme(FollowemeDto dto) {
		return 0;
	}

}
