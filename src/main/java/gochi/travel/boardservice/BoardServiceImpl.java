package gochi.travel.boardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.boarddao.BoardDAO;
import gochi.travel.model.boarddto.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

	@Override
	public int insert(BoardDTO dto) {
		int result=boardDao.insert(dto);
		return result;
	}

	@Override
	public List<BoardDTO> select() {
		List<BoardDTO> list=boardDao.select();
		return list;
	}

	@Override
	public BoardDTO detail(int boardno) {
		BoardDTO boardDTO=boardDao.detail(boardno);
		return boardDTO;
	}

	@Override
	public int delete(int deleteNum) {
		int result=boardDao.delete(deleteNum);
		return result;
	}

	@Override
	public int modify(BoardDTO boardDTO) {
		int result=boardDao.modify(boardDTO);
		return result;
	}
	

}
