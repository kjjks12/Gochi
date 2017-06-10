package gochi.travel.friendservice;

import java.util.List;

import gochi.travel.model.frienddto.FriendDTO;

public interface FriendService {
	List<FriendDTO> selectFriendList(String email);
}
