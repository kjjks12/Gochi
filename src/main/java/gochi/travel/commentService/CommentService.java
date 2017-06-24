package gochi.travel.commentService;

import java.util.List;

import gochi.travel.model.commentdto.CommentDTO;

public interface CommentService {

		int commentAdd(CommentDTO commentDTO);
		List<CommentDTO> selectComment(int board_no);
		String commentDelete(String sessionEmail, String boardEmail,int board_no);
}
