package gochi.travel.model.frienddao;

import java.util.List;
import java.util.Map;

import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.memberdto.MemberDTO;

public interface FriendDAO {
	List<FriendDTO> selectFriendList(String email);
	List<MemberDTO> selectMemberList(String keyword);
	Map<String,String> insertFriend(FriendDTO friendDTO);
	int updateFriendAuth(int friendNo);
	int deleteFriendRequest(int friendNo);
	boolean selectFriendDuplicate(String email,String keyword);
	MemberDTO selectMineFriend(String email);
}
