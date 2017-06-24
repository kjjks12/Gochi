package gochi.travel.model.mypagedao;

import java.util.HashMap;
import java.util.Map;

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

	@Override
	public int updateMyInfo(MypageDTO mypageDTO) {
		return sqlSession.update("mypageMapper.updateMyInfo",mypageDTO);
	}

	@Override
	public MypageDTO selectDetail(String email) {
		return sqlSession.selectOne("mypageMapper.selectDetail", email);
	}

	@Override
	public int updateMyProfileImg(String profileImg, String email) {
		Map<String,String> map = new HashMap<>();
		map.put("profileImg", profileImg);
		map.put("email", email);
		return sqlSession.selectOne("mypageMapper.updateMyProfileImg", map);
	}

	@Override
	public int updateMyBackProfileImg(String backImg, String email) {
		Map<String,String> map = new HashMap<>();
		map.put("backImg", backImg);
		map.put("email", email);
		return sqlSession.selectOne("mypageMapper.updateMyBackProfileImg", map);
	}
	
	

}
