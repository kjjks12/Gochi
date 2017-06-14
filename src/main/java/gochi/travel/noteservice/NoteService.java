package gochi.travel.noteservice;

import java.util.List;

import gochi.travel.model.notedto.NoteDTO;

public interface NoteService {
	List<NoteDTO> selectMessage(String email);
	List<NoteDTO> selectMessageBySendEmail(String senderEmail);
	int insertNote(NoteDTO noteDTO);
	int selectMaxNum();
	int updateFlagNum(int flag,int messageNum);
}
