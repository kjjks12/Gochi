package gochi.travel.model.traveldao;

import java.util.List;

import gochi.travel.model.traveldto.CheckListDTO;
import gochi.travel.model.traveldto.TravelDTO;
import gochi.travel.model.traveldto.TravelItinearyDTO;

public interface TravelDao {

	/** 모달 창 이용하여 받은 기본 여행 정보 저장*/
	TravelDTO initTravelInfoSave(TravelDTO travelDTO);
	
	/** 여행 일정 1개 등록 저장*/
	TravelItinearyDTO travelItinearySave(TravelItinearyDTO travelItinearyDTO);
	
	/**달력 클릭시 해당 여행 정보 모달로 보여주기 */
	TravelItinearyDTO selectTravelItineary(int travelNo) ;
	
	/**여행 일정에서 타이틀 수정 */
	int updateItinearyTitle(String title,int travelNo);
	
	/**여행 일정에서 커버 이미지 수정 */
	int updateTravelCover(String fileName,String email,String travelNo);
	
	/* 체크리스트 삽입, 삭제*/
	int CeckList(CheckListDTO checklist);
	
	/* 체크리스트 검색*/
	List<String> selectCheckList(int travel_no);
	
	/* 체크리스트 중복체크*/
	String overLapCheck(CheckListDTO overLapCheck); 
	
	/* index에서 사용할 */
	List<TravelDTO> list();
	
	
}
