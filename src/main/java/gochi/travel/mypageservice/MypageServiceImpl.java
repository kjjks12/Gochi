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

}
