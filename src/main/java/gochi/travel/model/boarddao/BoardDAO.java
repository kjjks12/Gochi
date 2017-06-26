package gochi.travel.model.boarddao;

import java.util.List;
import java.util.Map;

import gochi.travel.model.boarddto.BoardDTO;
import gochi.travel.model.boarddto.QaBoardDTO;

public interface BoardDAO {
	
	int insert(BoardDTO dto);
	List<BoardDTO> select();
	BoardDTO detail(int boardno);
	int delete(int deleteNum);
	int modify(BoardDTO boardDTO);
	List<BoardDTO> pagination(Map<String, Integer> map);
	int favor(int boardno);
	BoardDTO favorNum(int boardno);
	
	//fag.jsp
	List<QaBoardDTO> faq();
	
	
	//Q&A BOARD DAO
	List<QaBoardDTO> qapagination(Map<String, Integer>map);
	int qainsert(QaBoardDTO dto);
	int qadelete(int deleteNum);
	QaBoardDTO qadetail(int qaboardno);
	int qamodify(QaBoardDTO qaboardDTO);

}
