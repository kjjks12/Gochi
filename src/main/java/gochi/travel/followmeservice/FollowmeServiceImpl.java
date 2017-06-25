package gochi.travel.followmeservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.followmedao.FollowemeDao;

@Service
public class FollowmeServiceImpl implements FollowmeService {

		@Autowired
		private FollowemeDao followemeDao;
	@Override
	public int insertFollowme(FollowemeDto dto) {

		return 0;
	}

}
