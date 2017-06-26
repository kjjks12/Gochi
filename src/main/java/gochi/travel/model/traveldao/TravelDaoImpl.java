package gochi.travel.model.traveldao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;

/**
 * @author jgs
 *
 */
@Transactional
@Repository
public class TravelDaoImpl implements TravelDao{

	@Autowired
	private SqlSession sqlsession;
	
	 
	@Override
	public TravelDTO initTravelInfoSave(TravelDTO travelDTO) {
		int result = sqlsession.insert("traveladdMapper.insertInitTravelInfo",travelDTO);
		if(result!=0)
			return travelDTO;
		
		return null;
	}

	

	@Override
	public TravelItinearyDTO travelItinearySave(TravelItinearyDTO travelItinearyDTO) {
		travelItinearyDTO.setDay("1");
		travelItinearyDTO.setCategory("여행지");
		System.out.println("DAO----------------------");
		System.out.println("여행 번호 :"+travelItinearyDTO.getTravelNo());
		System.out.println("타이틀:"+travelItinearyDTO.getTravelItinearyTitle());
		System.out.println("내용:"+travelItinearyDTO.getStory());
		System.out.println("시작시간:"+travelItinearyDTO.getStartTime());
		System.out.println("시작시간:"+travelItinearyDTO.getEndTime());
		System.out.println("위도:"+travelItinearyDTO.getLatitude());
		System.out.println("경도:"+travelItinearyDTO.getLogtitude());
		
		int result = sqlsession.insert("traveladdMapper.insertTravelItineary",travelItinearyDTO);
		if(result!=0)
			return travelItinearyDTO;
		
		return null;
		
	}
	
	


	
	@Override
	public TravelItinearyDTO selectTravelItineary(int travelNo) {
		
		return sqlsession.selectOne("traveladdMapper.selectTravelItineary", travelNo);
	}



	@Override
	public int CeckList(CheckListDTO checklist) {
			int result=0;
		String check = checklist.getCheck();
				if(check.equals("true")){  // 삽입
					
					 result = sqlsession.insert("traveladdMapper.insertCheckList", checklist);
				}else{
					result = sqlsession.delete("traveladdMapper.deleteCheckList", checklist);
				}
		return result;
	}

	
	@Override
	public List<String> selectCheckList(int travel_no) {
		
		return sqlsession.selectList("traveladdMapper.selectCheckList", travel_no);
	}

	@Override
	public String overLapCheck(CheckListDTO overLapCheck) {
		
		System.out.println(overLapCheck.getTravel_no());
		System.out.println(overLapCheck.getItem());
		String result = sqlsession.selectOne("traveladdMapper.overLapCheckList", overLapCheck);
		return result;
	}



	@Override
	public int updateItinearyTitle(String title, int travelNo) {
		Map<String,Object>map = new HashMap<>();
		map.put("title", title);
		map.put("travelNo", travelNo);
		return sqlsession.update("traveladdMapper.updateItinearyTitle", map);
	}



	@Override
	public int updateTravelCover(String fileName, String email,String travelNo) {
		Map<String,Object>map = new HashMap<>();
		map.put("travelCoverImg", fileName);
		map.put("email", email);
		map.put("travelNo", travelNo);
		return sqlsession.update("traveladdMapper.updateTravelCover", map);
	}



	@Override
	public List<TravelDTO> selectMyTravelList(String email) {
		return sqlsession.selectList("traveladdMapper.selectMyTravelList", email);
	}
	
	
	

}
