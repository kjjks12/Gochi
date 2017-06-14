package gochi.travel.boardservice;

import java.util.List;

import gochi.travel.model.boarddto.BoardDTO;

public interface BoardService {
	int insert(BoardDTO dto);
	List<BoardDTO> select();
	BoardDTO detail(int boardno);
	int delete(int deleteNum);
	

}
