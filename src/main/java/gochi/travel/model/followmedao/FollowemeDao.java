package gochi.travel.model.followmedao;

import java.util.List;

import gochi.travel.model.followedto.FollowemeDto;

public interface FollowemeDao  {

	 int insertFollowme(FollowemeDto dto);
	  List<FollowemeDto> followSelect();
}
