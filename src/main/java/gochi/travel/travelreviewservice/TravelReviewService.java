package gochi.travel.travelreviewservice;

import java.util.List;

import gochi.travel.model.travelreviewdto.TravelReviewDto;

public interface TravelReviewService {

		List<TravelReviewDto> newTrvelReview(String data);
		
		List<TravelReviewDto> goodTravelReview(String data);
}
