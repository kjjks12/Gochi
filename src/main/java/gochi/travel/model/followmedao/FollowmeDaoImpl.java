package gochi.travel.model.followmedao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.traveldto.TravelDTO;

@Repository
public class FollowmeDaoImpl implements FollowemeDao {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertFollowme(FollowemeDto dto) {
		return 0;
	}
	
	
	//화면에 뿌려줄 정보 가져오기
	@Override
	public List<TravelDTO> follow() {
		
		return sqlSession.selectList("travelReviewMapper.newTrvelReview","followme");
	}

	
	//좋아요 많은거 가져오기
	@Override
	public List<TravelDTO> likeFollow() {
		
		return sqlSession.selectList("travelReviewMapper.goodTravelReview","followme");
	}



	@Override
	 public List<FollowemeDto> followSelect() {
	      //List<FollowemeDto> list=sqlSession.selectList("followmeMapper.followSelect");
	      return null;
	   }
}
