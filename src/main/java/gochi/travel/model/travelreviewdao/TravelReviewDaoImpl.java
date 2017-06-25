package gochi.travel.model.travelreviewdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.travelreviewdto.TravelReviewDto;

@Repository
public class TravelReviewDaoImpl implements TravelReviewDao{

	@Autowired
	private SqlSession sqlSession;
	
	/* 최신글 전체검색*/
	@Override
	public List<TravelReviewDto> newTrvelReview(String data) {
		
		return sqlSession.selectList("travelReviewMapper.newTrvelReview",data);
	}
	
	/* 좋아요순 전체검색*/
	@Override
	public List<TravelReviewDto> goodTravelReview(String data) {
		
		return sqlSession.selectList("travelReviewMapper.goodTravelReview",data);
	}

	
}
