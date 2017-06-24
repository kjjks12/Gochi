package gochi.travel.model.traveldto;

/**
 * 
 * @author jgs
 * @see 여행 하루 -> 시간단위 일정 표시
 */
public class TravelItinearyDTO {

	/**여행 스토리 번호*/
	private int itinearyNo;
	/**여행 번호  FK역할*/
	private int travelNo;
	/**여행 방문 제목 */
	private String travelItinearyTitle;
	/**여행지 방문 날짜 */
	private String day;
	/** 여행지방문 시작 시간*/
	private String startTime;
	/** 여행지방문 끝 시간*/
	private String endTime;
	/** 여행지 장소 좌표 위도*/
	private String latitude;
	/** 여행지 장소 좌표 경도*/
	private String logtitude;
	/**여행지 장소에서 사용한 돈 */
	private int money;
	/**여행지 분류 (맛집, 여행지) */
	private String category;
	/** 여행지에서의 내용 img 태그도 같이 들어감*/
	private String story;
	

	
	/** 기본 생성자 */
	public TravelItinearyDTO() {}

	

	public TravelItinearyDTO(int itinearyNo, int travelNo, String travelItinearyTitle, String day, String startTime,
			String endTime, String latitude, String logtitude, String story) {
		super();
		this.itinearyNo = itinearyNo;
		this.travelNo = travelNo;
		this.travelItinearyTitle = travelItinearyTitle;
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		this.latitude = latitude;
		this.logtitude = logtitude;
		this.story = story;
	}



	public TravelItinearyDTO(int itinearyNo, int travelNo, String travelItinearyTitle, String day, String startTime,
			String endTime, String latitude, String logtitude, int money, String category, String story) {
		super();
		this.itinearyNo = itinearyNo;
		this.travelNo = travelNo;
		this.travelItinearyTitle = travelItinearyTitle;
		this.day = day;
		this.startTime = startTime;
		this.endTime = endTime;
		this.latitude = latitude;
		this.logtitude = logtitude;
		this.money = money;
		this.category = category;
		this.story = story;
	}



	public int getItinearyNo() {
		return itinearyNo;
	}



	public void setItinearyNo(int itinearyNo) {
		this.itinearyNo = itinearyNo;
	}



	public int getTravelNo() {
		return travelNo;
	}



	public void setTravelNo(int travelNo) {
		this.travelNo = travelNo;
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



	public String getLatitude() {
		return latitude;
	}



	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}



	public String getLogtitude() {
		return logtitude;
	}



	public void setLogtitude(String logtitude) {
		this.logtitude = logtitude;
	}



	public int getMoney() {
		return money;
	}



	public void setMoney(int money) {
		this.money = money;
	}



	public String getCategory() {
		return category;
	}



	public void setCategory(String category) {
		this.category = category;
	}



	public String getStory() {
		return story;
	}



	public void setStory(String story) {
		this.story = story;
	}







	
	
	
}
