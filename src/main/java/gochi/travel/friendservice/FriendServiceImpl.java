package gochi.travel.friendservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.frienddao.FriendDAO;
import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.memberdto.MemberDTO;

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
	public Map<String,String> insertFriend(FriendDTO friendDTO) {
		return friendDAO.insertFriend(friendDTO);
	}
	@Override
	public int updateFriendAuth(int friendNo) {
		return friendDAO.updateFriendAuth(friendNo);
	}
	@Override
	public int deleteFriendRequest(int friendNo) {
		return friendDAO.deleteFriendRequest(friendNo);
	}
	@Override
	public boolean selectFriendDuplicate(String email, String keyword) {
		return friendDAO.selectFriendDuplicate(email, keyword);
	}
	@Override
	public MemberDTO selectMineFriend(String email) {
		return friendDAO.selectMineFriend(email);
	}
	
	
	
}
