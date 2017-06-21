package gochi.travel.mypagecontroller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.mypageservice.MypageService;

/***
 * 마이페이지 프로필 사진, 배경 사진 관련 컨트롤러
 * @author 고준영
 */
@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService mypageService;

	/***
	 * 각 계정에 해당하는 프로필 페이지로 이동
	 * 
	 * session에서 얻어온 이메일값과 email에서 얻어온 값이 일치하면
	 * 프로필 페이지에서 수정이나 개인정보등을 볼 수 있다.
	 * 
	 * @param session 로그인 되어있는 본인의 정보 저장
	 * @param email 주소의 인자값으로 얻어온 정보 저장
	 * @return 보여줄 뷰 페이지.jsp
	 */
	@RequestMapping("/goInfo/{email}")
	public String gotoInfoForm(HttpSession session,@PathVariable String email,HttpServletRequest request){
		
		MypageDTO mypageDTO = mypageService.selectByEmail(email);
		//System.out.println("인자값에서 가져온 이메일 : "+mypageDTO.getEmail());
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		//System.out.println("세션에서 가져온 이메일 : "+memberDTO.getEmail());
		
		
		request.setAttribute("MYPAGEDTO", mypageDTO);
		request.setAttribute("MYPAGEEMAIL",mypageDTO.getEmail());
		request.setAttribute("MYEMAIL",memberDTO.getEmail());

		return "ex/profile";
	}
	@RequestMapping("/profileDetail")
	@ResponseBody
	public List<String> profileDetail(String email,String fEmail){
		//System.out.println("/profileDetail 도착");
		//System.out.println("내이메일 :"+fEmail);
		MypageDTO mypageDTO = mypageService.selectDetail(email);
		List<String> list = new ArrayList<>();
		list.add(0,mypageDTO.getEmail());
		list.add(1,mypageDTO.getNickName());
		list.add(2,mypageDTO.getPhoneNumber());
		list.add(3,mypageDTO.getSelfContent());
		list.add(4, fEmail);
		/*for(String columns:list){
			System.out.println(columns);
		}*/
		return list;
	}
	@RequestMapping("/update")
	public String gotoUpdate(String email,String phoneNumber,String selfContent){
		mypageService.updateMyInfo(new MypageDTO(email,phoneNumber,selfContent));
		return "redirect:/mypage/goInfo/"+email;
	}
}
