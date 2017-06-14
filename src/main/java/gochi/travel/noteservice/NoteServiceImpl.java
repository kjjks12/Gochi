package gochi.travel.noteservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.notedao.NoteDAO;
import gochi.travel.model.notedto.NoteDTO;

@Service
public class NoteServiceImpl implements NoteService {

	@Autowired
	private NoteDAO noteDAO;
	
	@Override
	public List<NoteDTO> selectMessage(String email) {
		return noteDAO.selectMessage(email);
	}
	@Override
	public List<NoteDTO> selectMessageBySendEmail(String senderEmail) {
		return noteDAO.selectMessageBySendEmail(senderEmail);
	}
	@Override
	public int insertNote(NoteDTO noteDTO) {
		return noteDAO.insertNote(noteDTO);
	}
	@Override
	public int selectMaxNum() {
		return noteDAO.selectMaxNum();
	}
	@Override
	public int updateFlagNum(int flag, int messageNum) {
		return noteDAO.updateFlagNum(flag, messageNum);
	}
}
