package gochi.travel.travelreviewservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.travelreviewdao.TravelReviewDao;
import gochi.travel.model.travelreviewdto.TravelReviewDto;


@Service
public class TravelReviewServiceImpl implements TravelReviewService {

		@Autowired
		private TravelReviewDao travelReviewDao;
		
	@Override
	public List<TravelReviewDto> newTrvelReview(String data) {
		List<TravelReviewDto> newReview= null;
		if(data != null){
			if(data.equals("전체")){
				newReview= travelReviewDao.newTrvelReview(null);
				 
			}else{
				newReview= travelReviewDao.newTrvelReview(data);
				if(newReview==null){
					return null;
				}
			}
		}else{
				newReview= travelReviewDao.newTrvelReview(data);
				if(newReview==null){
					return null;
				}
			}
		
		return newReview;
	}
	
	@Override
	public List<TravelReviewDto> goodTravelReview(String data) {
		List<TravelReviewDto> goodReview= null;
		if(data != null){
			if(data.equals("전체")){
				goodReview= travelReviewDao.goodTravelReview(null);
				 
			}else{
				goodReview= travelReviewDao.goodTravelReview(data);
				if(goodReview==null){
					return null;
				}
			}
		}else{
			goodReview= travelReviewDao.goodTravelReview(data);
				if(goodReview==null){
					return null;
				}
			}
		
		return goodReview;
	}
		
}
	

