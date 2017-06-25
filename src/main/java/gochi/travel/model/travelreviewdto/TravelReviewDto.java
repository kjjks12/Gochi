package gochi.travel.model.travelreviewdto;

public class TravelReviewDto {

		private int travel_no;  //여행후기번호
		private String title; //제목
		private String email; // 등록자 email
		private String thema; // 테마
		private String start_day; // 시작날짜
		private String end_day; // 끝날짜
		private String brief_story; // 간단여행설명
		private int favor;  // 좋아요
		private String img;
		// img 미정 ...
		
		public TravelReviewDto(){}
		
		public TravelReviewDto(int travel_no, String title, String email, String thema, String start_day,
				String end_day, String brief_story, int favor, String img) {
			super();
			this.travel_no = travel_no;
			this.title = title;
			this.email = email;
			this.thema = thema;
			this.start_day = start_day;
			this.end_day = end_day;
			this.brief_story = brief_story;
			this.favor = favor;
			this.img = img;
		}

		public int getTravel_no() {
			return travel_no;
		}
		public void setTravel_no(int travel_no) {
			this.travel_no = travel_no;
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
		public String getStart_day() {
			return start_day;
		}
		public void setStart_day(String start_day) {
			this.start_day = start_day;
		}
		public String getEnd_day() {
			return end_day;
		}
		public void setEnd_day(String end_day) {
			this.end_day = end_day;
		}
		public String getBrief_story() {
			return brief_story;
		}
		public void setBrief_story(String brief_story) {
			this.brief_story = brief_story;
		}
		public int getFavor() {
			return favor;
		}
		public void setFavor(int favor) {
			this.favor = favor;
		}

		public String getImg() {
			return img;
		}

		public void setImg(String img) {
			this.img = img;
		}
		
	
		
		
}
