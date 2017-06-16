package gochi.travel.model.boarddao;

import java.util.List;

import gochi.travel.model.boarddto.BoardDTO;

public interface BoardDAO {
	
	int insert(BoardDTO dto);
	List<BoardDTO> select();
	BoardDTO detail(int boardno);
	int delete(int deleteNum);
	int modify(BoardDTO boardDTO);

}
