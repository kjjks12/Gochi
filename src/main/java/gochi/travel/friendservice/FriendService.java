package gochi.travel.friendservice;

import java.util.List;

import gochi.travel.member.dto.MemberDTO;
import gochi.travel.model.frienddto.FriendDTO;

public interface FriendService {
	List<FriendDTO> selectFriendList(String email);
	List<MemberDTO> selectMemberList(String keyword);
	int insertFriend(FriendDTO friendDTO);
}
