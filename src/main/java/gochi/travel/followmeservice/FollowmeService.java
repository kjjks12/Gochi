package gochi.travel.followmeservice;

import java.util.List;

import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.traveldto.TravelDTO;

public interface FollowmeService {

		int insertFollowme(FollowemeDto dto);
		  
		List<FollowemeDto> followSelect();

		
		List<TravelDTO> follow();
		
		 List<TravelDTO> likeFollow();

}
