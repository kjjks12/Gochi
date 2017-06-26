package gochi.travel.mypageservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.mypagedao.MypageDAO;
import gochi.travel.model.mypagedto.MypageDTO;

@Service
public class MypageServiceImpl implements MypageService {

	@Autowired
	private MypageDAO mypageDAO;
	
	@Override
	public MypageDTO selectByEmail(String email) {
		return mypageDAO.selectByEmail(email);
	}

	@Override
	public int updateMyInfo(MypageDTO mypageDTO) {
		return mypageDAO.updateMyInfo(mypageDTO);
	}

	@Override
	public MypageDTO selectDetail(String email) {
		return mypageDAO.selectDetail(email);
	}

	@Override
	public int updateMyProfileImg(String profileImg, String email) {
		return mypageDAO.updateMyProfileImg(profileImg, email);
	}

	@Override
	public int updateMyBackProfileImg(String backImg, String email) {
		return mypageDAO.updateMyBackProfileImg(backImg, email);
	}

	
	
	
}
