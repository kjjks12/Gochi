package gochi.travel.commentcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import gochi.travel.commentService.CommentService;
import gochi.travel.model.commentdto.CommentDTO;
import gochi.travel.model.memberdto.MemberDTO;

@Controller
@RequestMapping("/comment")
public class CommentController {

		@Autowired
		private CommentService commentService;
		
		@RequestMapping("/commentAdd")
		@ResponseBody
		public List<CommentDTO> insertComment(CommentDTO commentDTO,HttpServletRequest request){
			HttpSession session = request.getSession();
			List<CommentDTO> commentList = null;
			MemberDTO memberDTO = (MemberDTO)session.getAttribute("dto");
			
			System.out.println(commentDTO.getBoard_no() + "김준");
			System.out.println(commentDTO.getContent()+ "김준");
				if(commentDTO.getContent()==null){
					
				}
			
			CommentDTO addComment = 
					new CommentDTO(commentDTO.getBoard_no(), commentDTO.getContent(),memberDTO.getEmail() );
			
			/* comment 삽입*/
			int result = commentService.commentAdd(addComment);
			
				if(result>0){
					/* 전체 출력*/
					 commentList = commentService.selectComment(commentDTO.getBoard_no());
				}
			
			return commentList;
		}
		
		@RequestMapping("/commentDelete")
		@ResponseBody
		public List<CommentDTO> commentDelete(HttpServletRequest request, String sessionEmail,
									String boardEmail,int board_no, String content){
			
			List<CommentDTO>  commentList=null;
			System.out.println(content +"    CONTET ??");
			System.out.println(sessionEmail);
			System.out.println(boardEmail);
			System.out.println(board_no);
			
			commentService.commentDelete(sessionEmail, boardEmail, board_no, content.trim());
			
			commentList = commentService.selectComment(board_no);
			
			
			return commentList;
		}
}
