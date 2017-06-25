package gochi.travel.model.commentdao;

import java.util.List;

import gochi.travel.model.commentdto.CommentDTO;

public interface CommentDao {

	int commentAdd(CommentDTO commentDTO);
	List<CommentDTO> selectComment(int board_no);
	int commentDelete(String sessionEmail, String boardEmail,int board_no,String content);
}
