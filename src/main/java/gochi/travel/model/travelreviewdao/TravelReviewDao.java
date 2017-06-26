package gochi.travel.model.travelreviewdao;

import java.util.List;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;
import gochi.travel.model.travelreviewdto.TravelReviewCommentDTO;
import gochi.travel.model.travelreviewdto.TravelReviewDto;

public interface TravelReviewDao {

		List<TravelDTO> newTrvelReview(String data);
		
		List<TravelDTO> goodTravelReview(String data);
		
		//후기 디테일 페이지 : 게시물 정보 가져오기.
		TravelDTO selectTravelInfo(String index);
		
		//후기 디테일 페이지 : 게시물 상세정보 가져오기.
		List<TravelItinearyDTO> selectTravelDetailInfo(String index);
		
		//후기 디테일 페이지 : 글쓴이 정보 가져오기
		MemberDTO writerInfo(String id);
		
		//후기 디테일 페이지 : 체크리스트 가져오기
		List<CheckListDTO> checkList(String index);
		
		//후기 디테일 페이지 : 댓글 달기
		int insertComment(TravelReviewCommentDTO commentDTO);
}
