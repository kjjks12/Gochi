package gochi.travel.boardcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import gochi.travel.boardservice.BoardService;
import gochi.travel.model.boarddto.BoardDTO;

@Controller
@RequestMapping("/community")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	
	@RequestMapping("/insert")
	public String insert(BoardDTO dto,HttpServletRequest request){
		System.out.println("1 시작한다.");
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
		System.out.println("boardno의 값"+modelNum);
		BoardDTO boardDTO = boardService.detail(modelNum);
		System.out.println("주소값"+boardDTO);
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
	public String modify_freeboard(HttpServletRequest request, int modifyNum){
		System.out.println("넘어온값"+modifyNum);
		BoardDTO boardDTO=boardService.detail(modifyNum);
		request.setAttribute("boardDTO", boardDTO);
		return "community/modify_freeboard";
	}
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request, BoardDTO boardDTO){
		System.out.println("업데이트할 내용을 가져오기"+boardDTO.getContent());
		int result=boardService.modify(boardDTO);
		BoardDTO data = boardService.detail(boardDTO.getBoardno());
		return "community/freeboard";
		
	}
	

}
