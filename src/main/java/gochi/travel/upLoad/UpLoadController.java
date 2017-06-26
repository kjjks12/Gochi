package gochi.travel.upLoad;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.model.memberdto.MemberDTO;
import gochi.travel.model.mypagedto.MypageDTO;
import gochi.travel.mypageservice.MypageService;

/***
 * 프로필 사진 & 배경 사진 
 * 업로드 관련 컨트롤러 
 * 
 * @author 고준영
 *
 */
@Controller
public class UpLoadController{
	
	@Autowired
	private MypageService myPageService;

	/***
	 * 프로필 페이지 프로필 사진 관련 업로드 메소드
	 * @param name
	 * @param file
	 * @param session
	 * @param request 이미지 유무 판별
	 * @return 프로필페이지
	 */
	@RequestMapping(value="/uploadProfileImg/{email}")
	public String uploadProfileImg(@RequestParam MultipartFile profileImgFile,HttpSession session,MypageDTO dto,HttpServletRequest request){
		//System.out.println("프로필 페이지 프로필 사진 관련 업로드 메소드");
		profileImgFile = dto.getProfileImgFile();
		//System.out.println("파일 : "+profileImgFile);
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		String path = session.getServletContext().getRealPath("/resources/img/member/profile");
		
		System.out.println("경로 : "+path);
		//System.out.println("멀티 파트 파일 : "+profileImgFile);
		if(profileImgFile != null){
			String fileName = profileImgFile.getOriginalFilename();
			dto.setProfileImgFile(profileImgFile);
		try{
			/*profileImgFile.transferTo(new File(path+"/"+memberDTO.getEmail()+"/"+profileImgFile.getOriginalFilename()));*/
			File file = new File(path+"/"+memberDTO.getEmail()+"/"+fileName);
			if(!file.exists()){
				file.mkdirs();
			}
			profileImgFile.transferTo(file);
			
			/***
			 * @param profileImg 프로필 이미지 이름
			 * @param email 세션에 저장된 ID
			 */
			myPageService.updateMyProfileImg(fileName, memberDTO.getEmail());
			}catch(Exception e){}
		}
		return "redirect:/mypage/goInfo/"+memberDTO.getEmail();
		//return memberDTO.getEmail();
	}
	
	/***
	 * 프로필 페이지 커버 사진 관련 업로드 메소드
	 * @param backImgFile 커버이미지 파일 이름
	 * @param session 아이디값을 가져오기 위한 세션
	 * @param dto 이미지 파일 이름 가져오기 위한 dto
	 * @return 프로필 페이지
	 */
	@RequestMapping("/uploadBackImg/{email}")
	public String uploadBackImg(@RequestParam MultipartFile backImgFile,HttpSession session,MypageDTO dto,HttpServletRequest request){
		//System.out.println("프로필 페이지 커버 사진 관련 업로드 메소드");
		backImgFile = dto.getBackImgFile();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
		String path = session.getServletContext().getRealPath("/resources/img/member/cover");
		
		//System.out.println("경로 : "+path);
		//System.out.println("멀티 파트 파일 : "+backImgFile);
		
		if(backImgFile != null){
			String fileName = backImgFile.getOriginalFilename();
			dto.setBackImgFile(backImgFile);
		try{
			File file = new File(path+"/"+memberDTO.getEmail()+"/"+fileName);
			if(!file.exists()){
				file.mkdirs();//폴더 없을시 자동으로 생성해줌
			}
			
			backImgFile.transferTo(file);
			/***
			 * @param profileImg 프로필 이미지 이름
			 * @param email 세션에 저장된 ID
			 */
			//myPageService.updateMyProfileImg(fileName, memberDTO.getEmail());
			//System.out.println("파일 이름 : "+fileName);
			
			myPageService.updateMyBackProfileImg(fileName, memberDTO.getEmail());
			}catch(Exception e){}
		}
		
		return "redirect:/mypage/goInfo/"+memberDTO.getEmail();
	}
}
