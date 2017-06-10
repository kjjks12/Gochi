package gochi.travel.notecontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import gochi.travel.model.frienddto.FriendDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.model.notedto.NoteDTO;
import gochi.travel.mypageservice.MypageService;
import gochi.travel.noteservice.NoteService;

@Controller
public class NoteController {

	@Autowired
	private NoteService noteService;
	
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping("/note")
	public String selectMessage(HttpSession session){
		//내가 받은 메세지정보들을 조회한다.
		List<NoteDTO> noteList = noteService.selectMessage("kjy73845@naver.com");
		
		//내가 받은 노트정보들과 작성자들의 정보들을 저장할 변수를 선언한다.
		List<Object> twoDTO = new ArrayList<>();
		
		try{
			for(NoteDTO dto:noteList){
				//작성자들의 아이디(이메일주소)를 String값에 저장한다.
				String sendEmail = dto.getSendEmail();
				//작성자들의 이메일주소를 토대로 작성자들의 정보를 가져온다.
				MypageDTO mypageDTO = mypageService.selectByEmail(sendEmail);
				//작성자들의 정보를 arrayList에 저장
				twoDTO.add(mypageDTO);
				
				System.out.println("메세지의 정보들 : "+dto);
				//작성자들의 정보를 세션에 저장
				session.setAttribute("senderDTO", twoDTO);
			}
			}catch(Exception e){}
		System.out.println("보낸이 정보 : "+twoDTO);
		return "ex/my-note";
	}
}
