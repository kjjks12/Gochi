package gochi.travel.boardcontroller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.boardservice.BoardService;
import gochi.travel.commentService.CommentService;
import gochi.travel.model.boarddto.BoardDTO;
import gochi.travel.model.boarddto.QaBoardDTO;
import gochi.travel.model.commentdto.CommentDTO;
import gochi.travel.model.memberdto.MemberDTO;

@Controller
@RequestMapping("/community")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	   @Autowired
	      private CommentService commentService;
	   
	
	
	@RequestMapping(value ="/singleUploadImageAjax", method=RequestMethod.POST)
	@ResponseBody
	public HashMap<String, Object> singleUploadImageAjax(@RequestParam("Filedata") MultipartFile multipartFile, HttpSession httpSession){ 
		HashMap<String,Object> fileInfo = new HashMap<>(); // CallBack할 때 이미지 정보를 담을 Map 
	
		// 업로드 파일이 존재하면 
		System.out.println("넘어온 파일의 값 : "+multipartFile.getOriginalFilename());
		if(multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))) { 
			// 확장자 제한 
			String originalName = multipartFile.getOriginalFilename(); // 실제 파일명 
			String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1).toLowerCase(); // 실제파일 확장자 (소문자변경) 
			if( !( (originalNameExtension.equals("jpg")) || (originalNameExtension.equals("gif")) || (originalNameExtension.equals("png")) || (originalNameExtension.equals("bmp")) ) ){ 
				fileInfo.put("result", -1); // 허용 확장자가 아닐 경우 
				return fileInfo; } 
			
			
			
			// 파일크기제한 (1MB) 
			long filesize = multipartFile.getSize(); // 파일크기 
			long limitFileSize = 1*1024*1024; // 1MB 
			if(limitFileSize < filesize){ // 제한보다 파일크기가 클 경우 
				fileInfo.put("result", -2); 
				return fileInfo; 
				} 
			// 저장경로 
			String defaultPath = httpSession.getServletContext().getRealPath("/"); // 서버기본경로 (프로젝트 폴더 아님) 
			String path = defaultPath + File.separator + "upload" + File.separator + "board" + File.separator + "images" + File.separator + ""; 
			// 저장경로 처리 
			File file = new File(path); 
			if(!file.exists()) { // 디렉토리 존재하지 않을경우 디렉토리 생성 
				file.mkdirs(); 
				} // 파일 저장명 처리 (20150702091941-fd8-db619e6040d5.확장자) 
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today= formatter.format(new Date()); String modifyName = today + "-" + UUID.randomUUID().toString().substring(20) + "." + originalNameExtension; // Multipart 처리 
			try { 
				// 서버에 파일 저장 (쓰기) 
				multipartFile.transferTo(new File(path + modifyName)); // 로그 
				
				
				System.out.println("** upload 정보 **"); 
				System.out.println("** path : " + path + " **"); 
				System.out.println("** originalName : " + originalName + " **"); 
				System.out.println("** modifyName : " + modifyName + " **"); 
				} catch (Exception e) { 
					e.printStackTrace(); 
					System.out.println("이미지파일업로드 실패 - singleUploadImageAjax"); 
				} 
			
			
			
			// CallBack - Map에 담기 
			String imageurl = httpSession.getServletContext().getContextPath() + "upload/board/images/" + modifyName; // separator와는 다름! 
			fileInfo.put("imageurl", imageurl); // 상대파일경로(사이즈변환이나 변형된 파일) 
			fileInfo.put("filename", modifyName); // 파일명 
			fileInfo.put("filesize", filesize); // 파일사이즈 
			fileInfo.put("imagealign", "C"); // 이미지정렬(C:center) 
			fileInfo.put("originalurl", imageurl); // 실제파일경로 
			fileInfo.put("thumburl", imageurl); // 썸네일파일경로(사이즈변환이나 변형된 파일) 
			fileInfo.put("result", 1); // -1, -2를 제외한 아무거나 싣어도 됨 
			} 
				return fileInfo; // @ResponseBody 어노테이션을 사용하여 Map을 JSON형태로 반환 }
			}
	
	
	@RequestMapping("/editor")
	public void test(){}
	
	@RequestMapping("/pagination")
	public ModelAndView pagination(int lastNum){
		ModelAndView mv = new ModelAndView();
		int startNum=((lastNum*10)-9);
		lastNum=lastNum*10;
		System.out.println("시작 번호 :"+startNum);
		System.out.println("마지막 번호 : "+lastNum);
		List<BoardDTO> list=boardService.pagination(startNum,lastNum);
		mv.addObject("list",list);
		mv.setViewName("community/freeboard");
		return mv;
	}
	
	
		 
	@RequestMapping("/imagePopup/pop") 
	public String imagePopup() 
	{ 
		return "community/image/pop"; 
	}

		
	
	
	@RequestMapping("/insert_freeboard/editor")
	public void insert_form(){
	}
	
	
	@RequestMapping("/insert")
	public String insert(BoardDTO dto,HttpServletRequest request){
		System.out.println("controller:"+dto.getEmail());
		System.out.println("controller:"+dto.getSel());
		int result=boardService.insert(dto);
		System.out.println("result의 값 : "+result);
		System.out.println("1");
		return "redirect:/community/select";
	}
	@RequestMapping("/select")
	public ModelAndView select(){
		List<BoardDTO> list=boardService.select();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",list);
		mv.setViewName("community/freeboard");
		return mv;
	}
	
	@RequestMapping("/detail/{modelNum}")
	public ModelAndView detail(HttpServletRequest request, @PathVariable int modelNum){
		HttpSession session = request.getSession();
		
		System.out.println("boardno의 값"+modelNum);
		BoardDTO boardDTO = boardService.detail(modelNum);
		System.out.println("주소값"+boardDTO);
		
		/* 준 comment */
		
		      MemberDTO userDto = (MemberDTO)session.getAttribute("dto");
	      if(userDto !=null){ // 로그인이 되어 userDto 가 null값이 아니라면 
	         System.out.println(userDto.getNickname());
	            
	      }
	      
	      List<CommentDTO> commentList = commentService.selectComment(modelNum);
	         if(commentList != null){
	            request.setAttribute("commentList", commentList);
	         }
	      
	      /* 준 comment 끝*/
	         
		ModelAndView mv = new ModelAndView();
		//mv.addObject("boardDTO", boardDTO);
		request.setAttribute("boardDTO", boardDTO);
		mv.setViewName("community/detailFreeboard");
		return mv;
		
	}
	
	@RequestMapping("/delete/{deleteNum}")
	public String delete(HttpServletRequest request,@PathVariable int deleteNum){
		System.out.println("delete의 값"+deleteNum);
		int result=boardService.delete(deleteNum);
		return "redirect:/community/select";
	}
	
	@RequestMapping("/modify_freeboard")
	public ModelAndView modify_freeboard(HttpServletRequest request, HttpServletResponse response, int modifyNum) throws Exception{
			BoardDTO boardDTO=boardService.detail(modifyNum); //detail(service)을 선택한 번호 DB의 값가져오기
			return new ModelAndView("community/modify_freeboard","boardDTO",boardDTO);
		}
	//int 번호를 줘서 넘기니깐됨
	@RequestMapping("/modify")
	public ModelAndView modify(HttpServletRequest request, BoardDTO boardDTO){
		
		int result=boardService.modify(boardDTO);
		System.out.println("Mapping의 숫자값:"+boardDTO.getBoardno());
		System.out.println("변경 결과 값"+result);
		BoardDTO data = boardService.detail(boardDTO.getBoardno());
		return new ModelAndView("community/detailFreeboard","boardDTO",data);
		
	}
	
	@RequestMapping("/confirm")
	@ResponseBody
	public Map<String, String> confirm(HttpServletRequest request,String updateIcon){
		System.out.println("AJAX에서 넘어온 값"+ updateIcon);
		Map<String, String> map = new HashedMap();
		map.put("updateIcon", updateIcon);
		MemberDTO memberDTO=(MemberDTO) request.getSession().getAttribute("dto");
		if(memberDTO==null){
			map.put("confirm", "false");
			return map;
		}else{
			BoardDTO boardDTO=boardService.detail(Integer.parseInt(updateIcon)); // 디비에서 글번호로 꺼내온값
			if(memberDTO.getEmail().equals(boardDTO.getEmail())){
				map.put("confirm", "true");
			}else{
				map.put("confirm", "false");
			}
		}
		return map; 
	}
	
	////////// Q&A board controller
	@RequestMapping("/qapagination") //Q&A Board 페이징
	public ModelAndView qaPagination(int lastNum){
		ModelAndView mv = new ModelAndView();
		int startNum=((lastNum*10)-9);
		lastNum=lastNum*10;
		System.out.println("시작 번호 :"+startNum);
		System.out.println("마지막 번호 : "+lastNum);
		List<QaBoardDTO> list=boardService.qapagination(startNum,lastNum);
		mv.addObject("list",list);
		mv.setViewName("community/qaBoard");
		return mv;
	}
	
	@RequestMapping("/qaInsert_freeboard/editor")
	public void qainsert_form(){
	}
	
	@RequestMapping("/qainsert")
	public String qainsert(QaBoardDTO dto,HttpServletRequest request){
		System.out.println("controller:"+dto.getEmail());
		System.out.println("Controller : "+dto.getQaContent());
		System.out.println("Controller :"+dto.getQaTitle());
		int result=boardService.qainsert(dto);
		System.out.println("result의 값 : "+result);
		System.out.println("1");
		return "redirect:/community/qapagination?lastNum=1";
	}
	@RequestMapping("/qadelete/{deleteNum}")
	public String qadelete(HttpServletRequest request,@PathVariable int deleteNum){
		System.out.println("delete의 값"+deleteNum);
		int result=boardService.qadelete(deleteNum);
		return "redirect:/community/qapagination?lastNum=1";
	}
	
	@RequestMapping("/qaconfirm")
	@ResponseBody
	public Map<String, String> qaconfirm(HttpServletRequest request,String updateIcon){
		System.out.println("AJAX에서 넘어온 값"+ updateIcon);
		Map<String, String> map = new HashedMap();
		map.put("updateIcon", updateIcon);
		MemberDTO memberDTO=(MemberDTO) request.getSession().getAttribute("dto");
		if(memberDTO==null){
			map.put("confirm", "false");
			return map;
		}else{
			QaBoardDTO qaboardDTO=boardService.qadetail(Integer.parseInt(updateIcon)); // 디비에서 글번호로 꺼내온값
			if(memberDTO.getEmail().equals(qaboardDTO.getEmail())){
				map.put("confirm", "true");
			}else{
				map.put("confirm", "false");
			}
		}
		return map; 
	}
	
	@RequestMapping("/qadetail/{modelNum}")
	public ModelAndView qadetail(HttpServletRequest request, @PathVariable int modelNum){
		HttpSession session = request.getSession();
		
		System.out.println("boardno의 값"+modelNum);
		QaBoardDTO qaboardDTO = boardService.qadetail(modelNum);
		System.out.println("주소값"+qaboardDTO);
		
		/* 준 comment */
		
		      MemberDTO userDto = (MemberDTO)session.getAttribute("dto");
	      if(userDto !=null){ // 로그인이 되어 userDto 가 null값이 아니라면 
	         System.out.println(userDto.getNickname());
	            
	      }
	      
	      List<CommentDTO> commentList = commentService.selectComment(modelNum);
	         if(commentList != null){
	            request.setAttribute("commentList", commentList);
	         }
	      
	      /* 준 comment 끝*/
	         
		ModelAndView mv = new ModelAndView();
		//mv.addObject("boardDTO", boardDTO);
		request.setAttribute("qaboardDTO", qaboardDTO);
		mv.setViewName("community/qaDetailFreeboard");
		return mv;
		
	}
	
	@RequestMapping("/qamodify_freeboard")
	public ModelAndView qamodify_freeboard(HttpServletRequest request, HttpServletResponse response, int modifyNum) throws Exception{
			QaBoardDTO qaboardDTO=boardService.qadetail(modifyNum); //detail(service)을 선택한 번호 DB의 값가져오기
			return new ModelAndView("community/qaModify_freeboard","qaboardDTO",qaboardDTO);
		}
	
	@RequestMapping("/qamodify")
	public ModelAndView qamodify(HttpServletRequest request, QaBoardDTO qaboardDTO){
		int result=boardService.qamodify(qaboardDTO);
		System.out.println("Mapping의 숫자값:"+qaboardDTO.getQaBoardNo());
		System.out.println("변경 결과 값"+result);
		QaBoardDTO data = boardService.qadetail(qaboardDTO.getQaBoardNo());
		return new ModelAndView("community/qaDetailFreeboard","qaboardDTO",data);
		
	}
	

}
