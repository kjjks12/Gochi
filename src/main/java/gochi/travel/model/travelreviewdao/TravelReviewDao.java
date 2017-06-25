package gochi.travel.model.travelreviewdao;

import java.util.List;

import gochi.travel.model.travelreviewdto.TravelReviewDto;

public interface TravelReviewDao {

		List<TravelReviewDto> newTrvelReview(String data);
		
		List<TravelReviewDto> goodTravelReview(String data);
}
