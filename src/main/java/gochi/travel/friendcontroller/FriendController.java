package gochi.travel.friendcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gochi.travel.friendservice.FriendService;
import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.mypageservice.MypageService;

@Controller
public class FriendController {

	@Autowired
	private FriendService friendService;
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/friends")
	public String gotoFriend(HttpSession session){
		List<FriendDTO> friendList = friendService.selectFriendList("kjy73845@naver.com");
		List<Object> twoDTO = new ArrayList<>();
		//twoDTO.add(friendList);
		//System.out.println("친구들의 닉네임 : ");
		try{
		for(FriendDTO dto:friendList){
			String friendsEmail =dto.getfEmail();
			MypageDTO mypageDTO = mypageService.selectByEmail(friendsEmail);
			//System.out.println(mypageDTO.getNickName());
			twoDTO.add(mypageDTO);
			session.setAttribute("FriendDTO", twoDTO);
		}
		System.out.println("listdto : "+twoDTO);
		}catch(Exception e){}
		//session.setAttribute("FriendDTO",friendList);
		return "ex/my-friends";
	}
}
