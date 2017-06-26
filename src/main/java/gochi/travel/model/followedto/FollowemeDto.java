package gochi.travel.model.followedto;

public class FollowemeDto {

		private String email;
		private String follow_start_day;
		private String follow_end_day;
		private String thema;
		private String location;
		private String distance;
		private String carTime;
		private String walkTime;
		private String bycicleTime;
		private String cost;
		private String story;
		
		public FollowemeDto(){}
		
		public FollowemeDto(String email, String follow_start_day, String follow_end_day, String thema, String location,
				String distance, String carTime, String walkTime, String bycicleTime, String cost, String story) {
			super();
			this.email = email;
			this.follow_start_day = follow_start_day;
			this.follow_end_day = follow_end_day;
			this.thema = thema;
			this.location = location;
			this.distance = distance;
			this.carTime = carTime;
			this.walkTime = walkTime;
			this.bycicleTime = bycicleTime;
			this.cost = cost;
			this.story = story;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getFollow_start_day() {
			return follow_start_day;
		}

		public void setFollow_start_day(String follow_start_day) {
			this.follow_start_day = follow_start_day;
		}

		public String getFollow_end_day() {
			return follow_end_day;
		}

		public void setFollow_end_day(String follow_end_day) {
			this.follow_end_day = follow_end_day;
		}

		public String getThema() {
			return thema;
		}

		public void setThema(String thema) {
			this.thema = thema;
		}

		public String getLocation() {
			return location;
		}

		public void setLocation(String location) {
			this.location = location;
		}

		public String getDistance() {
			return distance;
		}

		public void setDistance(String distance) {
			this.distance = distance;
		}

		public String getCarTime() {
			return carTime;
		}

		public void setCarTime(String carTime) {
			this.carTime = carTime;
		}

		public String getWalkTime() {
			return walkTime;
		}

		public void setWalkTime(String walkTime) {
			this.walkTime = walkTime;
		}

		public String getBycicleTime() {
			return bycicleTime;
		}

		public void setBycicleTime(String bycicleTime) {
			this.bycicleTime = bycicleTime;
		}

		public String getCost() {
			return cost;
		}

		public void setCost(String cost) {
			this.cost = cost;
		}

		public String getStory() {
			return story;
		}

		public void setStory(String story) {
			this.story = story;
		}
		
		
}
 