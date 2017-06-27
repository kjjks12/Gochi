package gochi.travel.model.followmedao;

import java.util.List;

import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.traveldto.TravelDTO;

public interface FollowemeDao  {

	 int insertFollowme(FollowemeDto dto);

	 List<TravelDTO> follow();
	 
	 List<TravelDTO> likeFollow();

}
