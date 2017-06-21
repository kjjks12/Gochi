package gochi.travel.model.boarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.boarddto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession session;

	@Override
	public int insert(BoardDTO dto) {
		System.out.println(dto.getContent());
		System.out.println(dto.getTitle());
		int result=session.insert("boardMapper.insert",dto);
		return result;
	}

	@Override
	public List<BoardDTO> select() {
		List<BoardDTO> list=session.selectList("boardMapper.select");
		return list;
	}

	@Override
	public BoardDTO detail(int boardno) {
		BoardDTO boardDTO=session.selectOne("boardMapper.select",boardno);
		return boardDTO;
	}

	@Override
	public int delete(int deleteNum) {
		int result=session.delete("boardMapper.delete",deleteNum);
		return result;
	}

	@Override
	public int modify(BoardDTO boardDTO) {
		int result=session.update("boardMapper.modify",boardDTO);
		return result;
	}

}
