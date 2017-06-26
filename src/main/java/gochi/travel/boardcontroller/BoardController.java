package gochi.travel.boardcontroller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
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
	
	@RequestMapping("/editor")
	public void test(){}
	
	@RequestMapping("/favor")
	@ResponseBody
	public Map<String, String> favor(int boardno){
		System.out.println("넘어오는 값 :"+boardno);
		Map<String, String> map = new HashMap<>();
		int result=boardService.favor(boardno);
		BoardDTO boardDTO=boardService.favorNum(boardno);
		if(0<result){
			map.put("favor", Integer.toString(boardDTO.getFavor()));
			map.put("flag", "true");
		}
		return map;
	}
	
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
		return "redirect:/community/pagination?lastNum=1";
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
		//Cookie cookies[]=request.getCookies();
		//Map<String, String> mapCookie = new HashMap<>();
		/*if(request.getCookies() !=null){
			for(int i=0; i<cookies.length; i++){
				Cookie obj = cookies[i];
				mapCookie.put(obj.getName(), obj.getValue());
			}
		}
		//저장된 쿠키중에 modelNum만 가져오기
		String cookie_read_count = (String) mapCookie.get("hits");
		//저장될 새로운 쿠키값 생성
		String new_cookie_read_count = "|"+modelNum;
		
		//저장된 쿠키에 새로운 쿠키값이 존재하는 지 검사
*/		
		
		
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
		return "redirect:/community/pagination?lastNum=1";
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
	@RequestMapping("/faq")
	public ModelAndView faq(){
		System.out.println("Controller faq 입장");
		ModelAndView mv = new ModelAndView();
		List<QaBoardDTO> list=boardService.faq();
		List<BoardDTO> blist=boardService.pagination(1, 5);
		List<QaBoardDTO> qlist=boardService.qapagination(1, 5);
		
		mv.addObject("list",list);
		mv.addObject("blist", blist);
		mv.addObject("qlist", qlist);
		mv.setViewName("community/faq");
		return mv;
	}
	
	
	
	
	///////////////////////// Q&A board controller
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
