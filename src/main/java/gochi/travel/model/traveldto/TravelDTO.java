package gochi.travel.model.traveldto;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * @author jgs
 * @see 여행정보 받아올 DTO
 */
public class TravelDTO {

	/** 여행 번호  */
	private int travelNo;
	/** 여행 제목  */
	private String title;
	/** 여행 이메일  */
	private String email;
	/** 여행 테마  */
	private String thema;
	/** 여행 시작일자  */
	private String travelStartDay;
	/** 여행 끝나는 일자  */
	private String travelEndDay;
	/** 여행에 대한 간략한 설명  */
	private String briefStory;
	/** 여행 좋아요 수  */
	private int favor;
	/** 여행 커버 이미지  */
	private String travelCoverImg;

	private MultipartFile travelCoverImgFile;
	
	/** 여행 기본 생성자*/
	public TravelDTO() {}

	/**
	 * 여행 기본 정보 받는 생성자(모달 부분)
	 * @param title
	 * @param thema
	 * @param travelStartDay
	 * @param travelEndDay
	 * @param briefStory
	 */
	public TravelDTO(String title, String thema, String travelStartDay, String travelEndDay, String briefStory) {
		super();
		this.title = title;
		this.thema = thema;
		this.travelStartDay = travelStartDay;
		this.travelEndDay = travelEndDay;
		this.briefStory = briefStory;
	}

	
	
	/**
	 * 저장버튼 눌렀을떄 받을 수 있는 생성자
	 * */
	public TravelDTO(int travelNo, String thema, String travelStartDay, String travelEndDay, String briefStory) {
		super();
		this.travelNo = travelNo;
		this.thema = thema;
		this.travelStartDay = travelStartDay;
		this.travelEndDay = travelEndDay;
		this.briefStory = briefStory;
	}

	/**
	 * @see 전체 다 받는 생성자
	 * @param travelNo
	 * @param title
	 * @param email
	 * @param thema
	 * @param travelStartDay
	 * @param travelEndDay
	 * @param briefStory
	 * @param favor
	 * @param travelCoverImg
	 */
	public TravelDTO(int travelNo, String title, String email, String thema, String travelStartDay, String travelEndDay,
			String briefStory, int favor, String travelCoverImg) {
		super();
		this.travelNo = travelNo;
		this.title = title;
		this.email = email;
		this.thema = thema;
		this.travelStartDay = travelStartDay;
		this.travelEndDay = travelEndDay;
		this.briefStory = briefStory;
		this.favor = favor;
		this.travelCoverImg = travelCoverImg;
	}

	public int getTravelNo() {
		return travelNo;
	}

	public void setTravelNo(int travelNo) {
		this.travelNo = travelNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getThema() {
		return thema;
	}

	public void setThema(String thema) {
		this.thema = thema;
	}

	public String getTravelStartDay() {
		return travelStartDay;
	}

	public void setTravelStartDay(String travelStartDay) {
		this.travelStartDay = travelStartDay;
	}

	public String getTravelEndDay() {
		return travelEndDay;
	}

	public void setTravelEndDay(String travelEndDay) {
		this.travelEndDay = travelEndDay;
	}

	public String getBriefStory() {
		return briefStory;
	}

	public void setBriefStory(String briefStory) {
		this.briefStory = briefStory;
	}

	public int getFavor() {
		return favor;
	}

	public void setFavor(int favor) {
		this.favor = favor;
	}

	public String getTravelCoverImg() {
		return travelCoverImg;
	}

	public void setTravelCoverImg(String travelCoverImg) {
		this.travelCoverImg = travelCoverImg;
	}

	public MultipartFile getTravelCoverImgFile() {
		return travelCoverImgFile;
	}

	public void setTravelCoverImgFile(MultipartFile travelCoverImgFile) {
		this.travelCoverImgFile = travelCoverImgFile;
	}		
}
