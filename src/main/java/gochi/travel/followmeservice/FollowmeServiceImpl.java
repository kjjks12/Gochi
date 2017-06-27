package gochi.travel.followmeservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.followedto.FollowemeDto;
import gochi.travel.model.followmedao.FollowemeDao;
import gochi.travel.model.traveldto.TravelDTO;

@Service
public class FollowmeServiceImpl implements FollowmeService {

		@Autowired
		private FollowemeDao followemeDao;
	@Override
	public int insertFollowme(FollowemeDto dto) {

		return 0;
	}

	
	//화면에 뿌려줄 정보 가져오기
	@Override
	public List<TravelDTO> follow() {
		
		return followemeDao.follow();
	}
	
	
	//좋아요 많은 게시물 가져오기
	@Override
	public List<TravelDTO> likeFollow() {
		
		return followemeDao.likeFollow();

	}

}
