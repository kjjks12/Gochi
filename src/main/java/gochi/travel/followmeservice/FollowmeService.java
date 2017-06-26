package gochi.travel.followmeservice;

import java.util.List;

import gochi.travel.model.followedto.FollowemeDto;

public interface FollowmeService {

		int insertFollowme(FollowemeDto dto);
		List<FollowemeDto> followSelect();
		
}
