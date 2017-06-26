package gochi.travel.commentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.commentdao.CommentDao;
import gochi.travel.model.commentdto.CommentDTO;

@Service
public class CommentServiceImpl implements CommentService {

		@Autowired
		private CommentDao commentDao;
		
	@Override
	public int commentAdd(CommentDTO commentDTO) {
			
			return commentDao.commentAdd(commentDTO);
	}

	@Override
	public List<CommentDTO> selectComment(int board_no) {
		
		return commentDao.selectComment(board_no);
	}

	@Override
	public String commentDelete(String sessionEmail, String boardEmail,int board_no,String content) {
		String result ="";
			if(sessionEmail.equals(boardEmail)){
				System.out.println(sessionEmail + "////" + boardEmail);
				if(commentDao.commentDelete(sessionEmail, boardEmail, board_no, content)>0){
					System.out.println("리턴해서 서비스옴");
					System.out.println("삭제성공");
				result = "삭제성공";
				}
			}else{
				result = "본인작성 댓글이 아니라 삭제 불가능합니다...";
			}
		return result;
	}

}
