package gochi.travel.model.notedao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return sqlSession.selectList("noteMapper.selectMessage", email);
	}

	@Override
	public List<NoteDTO> selectMessageBySendEmail(String senderEmail) {
		return sqlSession.selectList("noteMapper.selectMessageBySendEmail", senderEmail);
	}

	@Override
	public int insertNote(NoteDTO noteDTO) {
		String count = null;
		int result = 0;
		Object obj = null;
		try {
			obj = sqlSession.selectOne("noteMapper.selectCountMessage");
			if (obj == null) {
				count = "0";
			}else{
				count = obj+"";
			}
			noteDTO.setNoteNo(Integer.parseInt(count) + 1);
			noteDTO.getNoteNo();
			noteDTO.getSendEmail();
			noteDTO.getTitle();
			noteDTO.getContent();
			noteDTO.getFlag();
			noteDTO.getReceiveEmail();
			result = sqlSession.insert("noteMapper.insertReply", noteDTO);
		} catch (Exception e) {}
		return result;
	}

	@Override
	public int selectMaxNum() {
		return sqlSession.selectOne("noteMapper.selectCountMessage");
	}

	@Override
	public int updateFlagNum(int flag, int messageNum) {
		Map<String, Integer> map = new HashMap<>();
		map.put("flag", flag);
		map.put("noteNo", messageNum);
		return sqlSession.update("noteMapper.updateFlagMessage", map);
	}

	@Override
	public int selectCountReadYet(String email) {
		return sqlSession.selectOne("noteMapper.selectCountReadYet", email);
	}

	@Override
	public int updateFlagFriendMessage(int noteNo) {
		return sqlSession.update("noteMapper.updateFlagFriendMessage",noteNo);
	}

	@Override
	public int selectCountMessageFlag0or1(String email) {
		return sqlSession.selectOne("noteMapper.selectCountMessageFlag0or1",email);
	}
	
	

}
