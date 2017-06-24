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
	public String commentDelete(String sessionEmail, String boardEmail,int board_no) {
		String result ="";
			if(sessionEmail.equals(boardEmail)){
				if(commentDao.commentDelete(sessionEmail, boardEmail, board_no)>0){
				result = "삭제성공";
				}
			}else{
				result = "본인작석 댓글이 아니라 삭제 불가능합니다...";
			}
		return result;
	}

}
