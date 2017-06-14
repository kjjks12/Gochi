package gochi.travel.friendservice;

import java.util.List;
import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.memberdto.MemberDTO;

public interface FriendService {
	List<FriendDTO> selectFriendList(String email);
	List<MemberDTO> selectMemberList(String keyword);
	int insertFriend(FriendDTO friendDTO);
}
