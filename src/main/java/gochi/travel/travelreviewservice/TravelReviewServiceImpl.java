package gochi.travel.travelreviewservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;
import gochi.travel.model.travelreviewdao.TravelReviewDao;
import gochi.travel.model.travelreviewdto.TravelReviewDto;


@Service
public class TravelReviewServiceImpl implements TravelReviewService {

		@Autowired
		private TravelReviewDao travelReviewDao;
		
	@Override
	public List<TravelDTO> newTrvelReview(String data) {
		return travelReviewDao.newTrvelReview(data);
	}
	
	@Override
	public List<TravelDTO> goodTravelReview(String data) {
		
		return travelReviewDao.goodTravelReview(data);
	}
	
	//후기 페이지 : 기본정보 가져오기
	@Override
	public TravelDTO selectTravelInfo(String index) {
		TravelDTO travelInfo = travelReviewDao.selectTravelInfo(index);
		return travelInfo;
	}

	//후기 페이지 : 상세정보 가져오기
	@Override
	public List<TravelItinearyDTO> selectTravelDetailInfo(String index) {
		
		return travelReviewDao.selectTravelDetailInfo(index);
	}
	
	//후기 페이지 : 글쓴이 정보 가져오기
	@Override
	public MemberDTO writerInfo(String id) {
		
		return travelReviewDao.writerInfo(id);
	}

	@Override
	public List<CheckListDTO> checkList(String index) {
	
		return travelReviewDao.checkList(index);
	}
		
}
	

