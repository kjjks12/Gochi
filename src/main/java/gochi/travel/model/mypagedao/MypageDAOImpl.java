package gochi.travel.model.mypagedao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.mypagedto.MypageDTO;

@Repository
public class MypageDAOImpl implements MypageDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MypageDTO selectByEmail(String email) {
		return sqlSession.selectOne("mypageMapper.selectByEmail",email);
	}

}
