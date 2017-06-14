package gochi.travel.friendservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.member.dto.MemberDTO;
import gochi.travel.model.frienddao.FriendDAO;
import gochi.travel.model.frienddto.FriendDTO;

@Service
public class FriendServiceImpl implements FriendService {

	@Autowired
	private FriendDAO friendDAO;
	@Override
	public List<FriendDTO> selectFriendList(String email) {
		return friendDAO.selectFriendList(email);
	}
	@Override
	public List<MemberDTO> selectMemberList(String keyword) {
		return friendDAO.selectMemberList(keyword);
	}
	@Override
	public int insertFriend(FriendDTO friendDTO) {
		return friendDAO.insertFriend(friendDTO);
	}
	
	

}
