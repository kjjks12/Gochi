package gochi.travel.model.boarddao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.boarddto.BoardDTO;
import gochi.travel.model.boarddto.QaBoardDTO;

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
		int result=session.update("boardMapper.hits",boardno);
		BoardDTO boardDTO=session.selectOne("boardMapper.select",boardno);
		System.out.println("dao의 결과 :"+result);
		return boardDTO;
	}

	@Override
	public int delete(int deleteNum) {
		int result=session.delete("boardMapper.delete",deleteNum);
		return result;
	}

	@Override
	public int modify(BoardDTO boardDTO) {
		System.out.println("숫자"+boardDTO.getBoardno());
		System.out.println(boardDTO.getContent());
		int result=session.update("boardMapper.modify",boardDTO);
		return result;
	}

	@Override
	public List<BoardDTO> pagination(Map<String, Integer> map) {
		List<BoardDTO> list=session.selectList("boardMapper.pagination",map);
		return list;
	}
	
	@Override
	public int favor(int boardno) {
		int result = session.update("boardMapper.favor",boardno);
		return result;
	}
	
	@Override
	public BoardDTO favorNum(int boardno) {
		BoardDTO boardDTO = session.selectOne("boardMapper.favorNum",boardno);
		return boardDTO;
	}
	
	@Override
	public List<QaBoardDTO> faq() {
		List<QaBoardDTO> list=session.selectList("boardMapper.faq");
		return list;
	}

	/////////////////////////////q&a dao
	@Override
	public List<QaBoardDTO> qapagination(Map<String, Integer> map) {
		List<QaBoardDTO> list=session.selectList("boardMapper.qapagination",map);
		return list;
	}

	@Override
	public int qainsert(QaBoardDTO dto) {
		int result=session.insert("boardMapper.qainsert",dto);
		return result;
	}

	@Override
	public int qadelete(int deleteNum) {
		int result=session.delete("boardMapper.qadelete",deleteNum);
		return result;
	}

	@Override
	public QaBoardDTO qadetail(int qaboardno) {
		int result=session.update("boardMapper.qahits",qaboardno);
		QaBoardDTO qaboardDTO=session.selectOne("boardMapper.qaselect",qaboardno);
		System.out.println("dao의 결과 :"+result);
		return qaboardDTO;
	}

	@Override
	public int qamodify(QaBoardDTO qaboardDTO) {
		System.out.println("숫자"+qaboardDTO.getQaBoardNo());
		System.out.println("dao :"+qaboardDTO.getQaTitle());
		System.out.println(qaboardDTO.getQaContent());
		int result=session.update("boardMapper.qamodify",qaboardDTO);
		return result;
	}

	

	
	
	

}
