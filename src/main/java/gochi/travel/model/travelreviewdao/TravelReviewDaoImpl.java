package gochi.travel.model.travelreviewdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;
import gochi.travel.model.travelreviewdto.TravelReviewCommentDTO;
import gochi.travel.model.travelreviewdto.TravelReviewDto;

@Repository
public class TravelReviewDaoImpl implements TravelReviewDao{

	@Autowired
	private SqlSession sqlSession;
	
	/* 최신글 전체검색*/
	@Override
	public List<TravelDTO> newTrvelReview(String data) {
		if(data.equals("all")){
			List<TravelDTO> list = sqlSession.selectList("travelReviewMapper.newTrvelReview");
			System.out.println("타이틀 은 : "+list.get(0).getTitle());
			System.out.println("글쓴이 는 "+list.get(0).getEmail());
			return list;
		}
		return sqlSession.selectList("travelReviewMapper.newTrvelReview",data);
	}
	
	/* 좋아요순 전체검색*/
	@Override
	public List<TravelDTO> goodTravelReview(String data) {
		if(data.equals("all")){
			List<TravelDTO> list = sqlSession.selectList("travelReviewMapper.goodTravelReview");
			System.out.println(list.get(0).getTitle());
			return list;
		}
		return sqlSession.selectList("travelReviewMapper.goodTravelReview",data);
	}
	
	//후기 페이지 : 기본정보 가져오기
	@Override
	public TravelDTO selectTravelInfo(String index) {
		
		return sqlSession.selectOne("travelReviewMapper.TravelInfo", Integer.parseInt(index));
	}

	//후기 페이지 : 상세정보 가져오기
	@Override
	public List<TravelItinearyDTO> selectTravelDetailInfo(String index) {
		
		return sqlSession.selectList("travelReviewMapper.TravelDetailInfo", Integer.parseInt(index));
	}

	//후기 페이지 : 글쓴이 정보 가져오기
	@Override
	public MemberDTO writerInfo(String id) {
		
		return sqlSession.selectOne("memberMapper.selectMember", id);
	}

	@Override
	public List<CheckListDTO> checkList(String index) {
		
		return sqlSession.selectList("travelReviewMapper.selectCheckList", Integer.parseInt(index));
	}

	@Override
	public int insertComment(TravelReviewCommentDTO commentDTO) {
		
		return sqlSession.insert("travelReviewMapper.commentInsert",commentDTO);
	}

	@Override
	public List<TravelDTO> lowPrice() {
		
		return sqlSession.selectList("");
	}


	
}
