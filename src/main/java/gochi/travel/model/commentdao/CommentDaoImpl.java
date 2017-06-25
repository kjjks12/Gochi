package gochi.travel.model.commentdao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public int commentDelete(String sessionEmail, String boardEmail, int board_no, String content) {

			Map<String, Object> map = new HashMap<>();
			
				map.put("email", sessionEmail);
				map.put("board_no", board_no);
				map.put("content", content);
				
		System.out.println(content +"2CONTET ??");
		System.out.println(sessionEmail);
		System.out.println(boardEmail);
		System.out.println(board_no);
	   System.out.println("delete 도착");
	   
	   int result = session.delete("commentMapper.deleteComment", map);
		System.out.println("delete mapper 다녀옴  "+result);
		return result;
	}

}
