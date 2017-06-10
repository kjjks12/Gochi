package gochi.travel.model.notedao;

import java.util.List;

import gochi.travel.model.notedto.NoteDTO;

public interface NoteDAO {
	List<NoteDTO> selectMessage(String email);
}
