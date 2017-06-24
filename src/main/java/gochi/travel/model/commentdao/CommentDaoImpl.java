package gochi.travel.model.commentdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.commentdto.CommentDTO;

@Repository
public class CommentDaoImpl implements CommentDao {

	@Autowired
	private SqlSession session;
	
	@Override
	public int commentAdd(CommentDTO commentDTO) {
		return session.insert("commentMapper.insertComment",commentDTO);
	}

	@Override
	public List<CommentDTO> selectComment(int board_no) {
		return session.selectList("commentMapper.selectComment", board_no);
	}

	@Override
	public int commentDelete(String sessionEmail, String boardEmail, int board_no) {
		CommentDTO deleteComment = new CommentDTO(board_no, sessionEmail);
		return session.delete("commentMapper.deleteComment", deleteComment);
	}

}
