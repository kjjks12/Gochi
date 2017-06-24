package gochi.travel.notecontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.model.notedto.NoteDTO;
import gochi.travel.mypageservice.MypageService;
import gochi.travel.noteservice.NoteService;

/***
 * @author 고준영
 * 메시지 관련 컨트롤러
 */
@Controller
public class NoteController {
	
	@Autowired
	private NoteService noteService;
	
	@Autowired
	private MypageService mypageService;

	/***
	 * 로그인한 유저가 받은 메시지 리스트를 가져오는 메소드
	 * @param session - 세션에 저장되어있는 유저의 정보를 가져옴
	 * @return 노트 페이지로 이동
	 */
	@RequestMapping("/note")
	public String selectMessage(HttpSession session){
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		//내가 받은 메세지정보들을 조회한다.
		List<NoteDTO> noteList = noteService.selectMessage(memberDTO.getEmail());
		//아직 읽지 않은 메세지 갯수를 조회한다.
		int readYet = noteService.selectCountReadYet(memberDTO.getEmail());
		//읽거나 혹은 읽지 않은 메시지 갯수만 조회한다.
		int flagCount = noteService.selectCountMessageFlag0or1(memberDTO.getEmail());
		//작성자들의 정보들을 저장할 변수를 선언한다.
		List<Object> twoDTO = new ArrayList<>();
		try{
			for(NoteDTO dto:noteList){
				//작성자들의 아이디(이메일주소)를 String값에 저장한다.
				String sendEmail = dto.getSendEmail();
				//System.out.println("작성자들의 id : "+sendEmail);		
				//작성자들의 정보를 조회한다.
				MypageDTO mypageDTO = mypageService.selectByEmail(sendEmail);
				/***
				 * 작성자들의 정보를 arrayList에 저장
				 * jsp에서 c:forEach문으로 반복문을 출력할 것이므로
				 * mypageService.selectByEmail(보낸사람계정ID)의 결과값은 하나
				 * 출력할 값은 여러값이므로 arrayList에 저장
				 */
				twoDTO.add(mypageDTO);
				
				/** 보낸 사람들의 정보와 메세지 정보를 세션에 저장
				 * 
				 * 없을경우 메시지가 없습니다
				 * 받은 메시지 갯수 출력
				 * 반복문 출력
				 */
				session.setAttribute("senderDTO", twoDTO);
			}
			session.setAttribute("noteDTO",noteList);
			session.setAttribute("MyEmail", memberDTO.getEmail());
			session.setAttribute("maxNum", noteService.selectMaxNum());
			session.setAttribute("readYet", readYet);
			session.setAttribute("flagCount", flagCount);
			}catch(Exception e){}
		return "ex/my-note";
	}
	/***
	 * 메시지 작성 및 답신 관련 메소드
	 * @param replyReceiveEmail 메시지 답신을 받는 이메일
	 * @param messageTitle 메시지 제목
	 * @param messageContent 메시지 내용
	 * @param myEmail 자신의 이메일
	 * @return 인덱스페이지
	 */
	@RequestMapping("/noteWrite")
	public String insertMessage(String replyReceiveEmail,String messageTitle,String messageContent,String myEmail){
		int flag=0;
		noteService.insertNote(new NoteDTO(myEmail, messageTitle, messageContent,flag,replyReceiveEmail));
		return "index";
	}
	/***
	 * 메시지 상세페이지 진입시 flag 값 변경 메소드
	 * @param flag
	 * 메시지 작성시 : flag = 0 (읽지 않음)
     * 메시지 상세페이지로 들어갈때 : flag = 1 (읽음 처리)
     * 친구 요청을 수락하거나 거절할때 : flag = 2 (리스트에서만 안보임 처리)
	 * @param messageNum 메시지 번호
	 * @param title 메시지 제목
	 * @return 메시지 타이틀을 리턴 해당 문자열을 판별하여 메시지 또는 친구요청 메시지인지 판별
	 */
	@RequestMapping("/updateFlag")
	@ResponseBody
	public ResponseEntity<String> updateFlag(Integer flag,Integer messageNum,String title){//메세지 읽을때 처리
		
		try{
			noteService.updateFlagNum(flag, messageNum);
		}catch(NullPointerException e){}
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "text/html;charset=UTF-8");
		ResponseEntity<String> re = new ResponseEntity<String>(title,headers,HttpStatus.OK);
		return re;
	}
}
