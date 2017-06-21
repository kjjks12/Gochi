package gochi.travel.model.notedao;

import java.util.List;

import gochi.travel.model.notedto.NoteDTO;

public interface NoteDAO {
	List<NoteDTO> selectMessage(String email);
	List<NoteDTO> selectMessageBySendEmail(String senderEmail);
	int insertNote(NoteDTO noteDTO);
	int selectMaxNum();
	int updateFlagNum(int flag,int messageNum);
	int selectCountReadYet(String email);
	int updateFlagFriendMessage(int noteNo);
	int selectCountMessageFlag0or1(String email);
}
