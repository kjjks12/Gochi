package gochi.travel.noteservice;

import java.util.List;

import gochi.travel.model.notedto.NoteDTO;

public interface NoteService {
	List<NoteDTO> selectMessage(String email);
}
