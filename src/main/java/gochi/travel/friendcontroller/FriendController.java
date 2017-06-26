package gochi.travel.friendcontroller;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import gochi.travel.friendservice.FriendService;
import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.model.notedto.NoteDTO;
import gochi.travel.mypageservice.MypageService;
import gochi.travel.noteservice.NoteService;

/***
 * 친구기능 관련 컨트롤러
 * @author 고준영
 */
@Controller
public class FriendController {

	@Autowired
	private FriendService friendService;

	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private NoteService noteService;
	
	/***
	 * 친구 리스트 관련 메소드
	 * @param session 세션에 저장되어있는 유저의 정보를 가져옴
	 * @return ex/my-friends 친구 리스트 페이지
	 */
	@RequestMapping("/friends")
	public String gotoFriend(HttpSession session,HttpServletRequest request) {
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		List<FriendDTO> friendList = friendService.selectFriendList(memberDTO.getEmail());
		//System.out.println("친구들 목록 :"+friendList);
		List<Object> twoDTO = new ArrayList<>();
		try {
			for (FriendDTO dto : friendList) {
				/**
				 * 작성자들의 닉네임을 가져오기 위한 일련의 과정
				 */
				String friendsEmail = dto.getfEmail();
				MypageDTO mypageDTO = mypageService.selectByEmail(friendsEmail);
				twoDTO.add(mypageDTO);
				
				request.setAttribute("FriendDTO", twoDTO);
			}
			session.setAttribute("myEmail", memberDTO.getEmail());
			
		} catch (Exception e) {
		}
		return "ex/my-friends";
	}

	/**
	 * 친구 추가 이전에 유저 ID 검색 관련 메소드
	 * keyup 메소드를 통해 반응하는 메소드
	 * @param keyword 검색 키워드
	 * @return 키워드로 검색한 계정ID 여러 결과값
	 */
	@RequestMapping("/searchMember")
	@ResponseBody
	public List<MemberDTO> searchMember(String keyword,String email) {
		List<MemberDTO> list=null;
		if(keyword==null||keyword.equals(""))
			return list;
		else
		list = friendService.selectMemberList(keyword);
		return list;
	}
	/**
	 * 친구 추가 이전에 유저 ID 검색 관련 메소드
	 * click 메소드를 통해 반응하는 메소드 
	 * 
	 * @param keyword 검색 키워드
	 * @return 결과에 따른 문자열 리턴
	 */
	@RequestMapping("/searchMemberClick")
	@ResponseBody
	public String searchMemberClick(String keyword,String email){
	
		try{
			if(friendService.selectMineFriend(keyword).getEmail().equals(friendService.selectMineFriend(email).getEmail())){
				return "mine";
			}else if(friendService.selectFriendDuplicate(email, keyword)){
				return "dupli";
			}
		}catch(NullPointerException e){}
		return "good";
	}
	
	/***
	 * 친구 요청 관련 메소드
	 * @param fEmail 친구요청을 받는 계정
	 * @param email 친구요청을 하는 주체 계정
	 */
	@RequestMapping("/insertFriend")
	@ResponseBody
	public void insertFriend(String fEmail, String email) {
		/**
		 * 친구 관계가 아닌 요청단계이기 때문에
		 * auth값은 0으로 삽입
		 */
		Map<String, String> map = friendService.insertFriend(new FriendDTO(email, fEmail, 0));
		/**
		 * 친구 추가시 상대방에게 동의를 구하는 메세지를 보냄
		 */
		int friendNo = Integer.parseInt(map.get("seqno"));
		String messageTitle ="[친구요청]";
		String messageContent = email+"님께서 친구 요청을 하셨습니다.\r\n 친구번호 #"+friendNo;
		
		noteService.insertNote(new NoteDTO(email, messageTitle, messageContent,0,fEmail));
	}
	/**
	 * 친구 요청 수락시 친구 추가 및 업데이트
	 * @param email 친구 요청 수락을 받는 쪽
	 * @param fEmail 친구 요청을 한 쪽
	 * @param content 친구 요청 내용(친구번호 포함)
	 */
	@RequestMapping("/friendAgree")
	@ResponseBody
	public void agreeFriend(String email,String fEmail,String content,int noteNo){ 
	
		/***
		 * content값에 #를 구분자로 하여 저장한 친구번호를 가져옴
		 * 
		 * **친구번호의 용도
		 * 	: 기존에 친구요청했던 레코드를 조회하여(친구 DB에 저장된)
		 *    auth값을 1로 변경하기 위한 것 
		 */
		String []contents = content.split("#");
		int friendNo = Integer.parseInt(contents[1]);
		
		/**
		 * 친구 DB의 auth값을 1로 변경
		 */
		friendService.updateFriendAuth(friendNo);
		
		/***
		 * 기존에는 친구요청을 한 입장에서만 DB 레코드 삽입이 되어있음
		 * 친구요청을 받는쪽에서도 친구 DB에 레코드 삽입
		 * 
		 * 예시) 
		 * 친구요청을 받는 쪽 - EMAIL
		 * 친구요청을 한 쪽 - F_EMAIL
		 * 
		 * 이 과정을 통해 실질적인 친구관계가 되었으므로 
		 * 친구 요청 처리와는 달리 auth값은 1로 삽입 처리를 함
		 */
		friendService.insertFriend(new FriendDTO(email, fEmail, 1));
		
		/***
		 * 친구 요청 메시지 처리 
		 * flag=2처리하여 리스트에서만 보이지 않게 처리<br>실제레코드는 남아있음
		 */
		
		noteService.updateFlagFriendMessage(noteNo);
	}
	/***
	 * 친구 요청 거절시 친구 레코드 삭제 및 업데이트
	 * @param content 친구 요청 내용(친구번호 포함)
	 */
	@RequestMapping("/friendDisagree")
	@ResponseBody
	public void disagreeFriend(String content,Integer noteNo){
		//System.out.println("거절할 메시지 내용 : "+content);
		System.out.println("거절할 메시지 요청 번호 : "+noteNo);
		
		/**
		 * 친구 요청 관련 처리
		 */
		String []contents = content.split("#");
		int friendNo = Integer.parseInt(contents[1]);
		friendService.deleteFriendRequest(friendNo);
		
		/**
		 * 친구 요청 메시지 관련 처리
		 */
		noteService.updateFlagFriendMessage(noteNo);
	}
}
