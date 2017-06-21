package gochi.travel.model.traveldto;

/**
 * 
 * @author jgs
 * @see 여행 하루 -> 시간단위 일정 표시
 */
public class TravelItinearyDTO {

	/**여행 스토리 번호*/
	private String travelNo;
	/**여행 방문 제목 */
	private String travelItinearyTitle;
	/**여행지 방문 날짜 */
	private String day;
	/** 여행지방문 시작 시간*/
	private String startTime;
	/** 여행지방문 끝 시간*/
	private String endTime;
	/** 여행지 장소 좌표 위도*/
	private double latitude;
	/** 여행지 장소 좌표 경도*/
	private double logtitude;
	/** 여행지에서의 내용 img 태그도 같이 들어감*/
	private String story;
	

	
	/** 기본 생성자 */
	public TravelItinearyDTO() {}


/**
 * @see 여행 일정 전체 받는 생성자
 * @param travelNo
 * @param day
 * @param startTime
 * @param endTime
 * @param location
 * @param story
 */


	
	//Getter Setter
	public String getTravelNo() {
		return travelNo;
	}


	/**
	 * 
	 * @param travelNo
	 * @param travelItinearyTitle
	 * @param day
	 * @param startTime
	 * @param endTime
	 * @param latitude
	 * @param logtitude
	 * @param story
	 */
	public TravelItinearyDTO(String travelNo, String travelItinearyTitle, String day, String startTime, String endTime,
		long latitude, long logtitude, String story) {
	super();
	this.travelNo = travelNo;
	this.travelItinearyTitle = travelItinearyTitle;
	this.day = day;
	this.startTime = startTime;
	this.endTime = endTime;
	this.latitude = latitude;
	this.logtitude = logtitude;
	this.story = story;
}


	public String getTravelItinearyTitle() {
		return travelItinearyTitle;
	}


	public void setTravelItinearyTitle(String travelItinearyTitle) {
		this.travelItinearyTitle = travelItinearyTitle;
	}


	public String getDay() {
		return day;
	}


	public void setDay(String day) {
		this.day = day;
	}


	public String getStartTime() {
		return startTime;
	}


	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}


	public String getEndTime() {
		return endTime;
	}


	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}


	public double getLatitude() {
		return latitude;
	}


	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}


	public double getLogtitude() {
		return logtitude;
	}


	public void setLogtitude(double logtitude) {
		this.logtitude = logtitude;
	}


	public String getStory() {
		return story;
	}


	public void setStory(String story) {
		this.story = story;
	}


	public void setTravelNo(String travelNo) {
		this.travelNo = travelNo;
	}

	
	
	
}
