package gochi.travel.boardservice;

import java.util.List;

import gochi.travel.model.boarddto.BoardDTO;
import gochi.travel.model.boarddto.QaBoardDTO;

public interface BoardService {
	int insert(BoardDTO dto);
	List<BoardDTO> select();
	BoardDTO detail(int boardno);
	int delete(int deleteNum);
	int modify(BoardDTO boardDTO);
	List<BoardDTO> pagination(int startNum, int lastNum);
	int favor(int boardno);
	BoardDTO favorNum(int boardno);
	
	//faq.jsp
	List<QaBoardDTO> faq();
	
	//q&a service 부분
	List<QaBoardDTO> qapagination(int startNum, int lastNum);
	int qainsert(QaBoardDTO dto);
	int qadelete(int deleteNum);
	QaBoardDTO qadetail(int boardno);
	int qamodify(QaBoardDTO qaboardDTO);

}
