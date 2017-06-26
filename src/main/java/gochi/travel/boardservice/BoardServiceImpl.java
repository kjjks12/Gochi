package gochi.travel.boardservice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.boarddao.BoardDAO;
import gochi.travel.model.boarddto.BoardDTO;
import gochi.travel.model.boarddto.QaBoardDTO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	BoardDAO boardDao;

	@Override
	public int insert(BoardDTO dto) {
		System.out.println("service:"+dto.getEmail());
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

	@Override
	public List<BoardDTO> pagination(int startNum, int lastNum) {
		Map<String, Integer> map = new HashMap<>();
		System.out.println("service 시작 : "+startNum);
		System.out.println("service 끝 : "+lastNum);
		map.put("startNum", startNum);
		map.put("lastNum", lastNum);
		List<BoardDTO> list=boardDao.pagination(map);
		return list;
	}
	
	@Override
	public int favor(int boardno) {
		int result=boardDao.favor(boardno);
		return result;
	}
	
	@Override
	public BoardDTO favorNum(int boardno) {
		return boardDao.favorNum(boardno);
	}
	
	
	
	@Override
	public List<QaBoardDTO> faq() {
		return boardDao.faq();
	}

	
	
	
///Q&A BOARD Service
	@Override
	public List<QaBoardDTO> qapagination(int startNum, int lastNum) {
		Map<String, Integer> map = new HashMap<>();
		System.out.println("service 시작 : "+startNum);
		System.out.println("service 끝 : "+lastNum);
		map.put("startNum", startNum);
		map.put("lastNum", lastNum);
		List<QaBoardDTO> list=boardDao.qapagination(map);
		return list;
	}

	@Override
	public int qainsert(QaBoardDTO dto) {
		System.out.println("service:"+dto.getEmail());
		int result=boardDao.qainsert(dto);
		return result;
	}

	@Override
	public int qadelete(int deleteNum) {
		int result=boardDao.qadelete(deleteNum);
		return result;
	}

	@Override
	public QaBoardDTO qadetail(int boardno) {
		QaBoardDTO qaboardDTO=boardDao.qadetail(boardno);
		return qaboardDTO;
	}

	@Override
	public int qamodify(QaBoardDTO qaboardDTO) {
		int result=boardDao.qamodify(qaboardDTO);
		return result;
	}

	
	

	
	
	

}
