package gochi.travel.model.notedao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import gochi.travel.model.notedto.NoteDTO;

@Repository
public class NoteDAOImpl implements NoteDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<NoteDTO> selectMessage(String email) {
		return sqlSession.selectList("noteMapper.selectMessage",email);
	}

}
