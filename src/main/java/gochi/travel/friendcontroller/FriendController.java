package gochi.travel.friendcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.friendservice.FriendService;
import gochi.travel.member.dto.MemberDTO;
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
	public String gotoFriend(HttpSession session) {
		List<FriendDTO> friendList = friendService.selectFriendList("kjy73845@naver.com");
		List<Object> twoDTO = new ArrayList<>();
		try {
			for (FriendDTO dto : friendList) {
				/**
				 * 작성자들의 닉네임을 가져오기 위한 일련의 과정
				 */
				String friendsEmail = dto.getfEmail();
				MypageDTO mypageDTO = mypageService.selectByEmail(friendsEmail);
				twoDTO.add(mypageDTO);
				
				session.setAttribute("FriendDTO", twoDTO);
			}
			session.setAttribute("myEmail", "kjy73845@naver.com");
			
		} catch (Exception e) {
		}
		return "ex/my-friends";
	}

	@RequestMapping("/searchMember")
	@ResponseBody
	public List<MemberDTO> searchMember(String keyword) {// 친구 찾기 이전에 검색
		List<MemberDTO> list = null;
			list = friendService.selectMemberList(keyword);
		return list;
	}
	@RequestMapping("/insertFriend")
	public String insertFriend(String fEmail, String email) {// 친구 추가
		friendService.insertFriend(new FriendDTO(email, fEmail));
		return "index";
	}
}
