package gochi.travel.model.followedto;

public class FollowemeDto {

      private String title;
      private String cover_img;
      private int follow_no;
      private String email;
      private String follow_start_day;
      private String follow_end_day;
      private String thema;
      private String location;
      private String distance;
      private String carTime;
      private String walkTime;
      private String bycicleTime;
      private int cost;
      private String story;
      private int favor;
      
      public FollowemeDto(){}
      
      public FollowemeDto(String email, String follow_start_day, String follow_end_day, String thema, String location,
            String distance, String carTime, String walkTime, String bycicleTime, int cost, String story) {
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
      

      public FollowemeDto(int follow_no, String email, String follow_start_day, String follow_end_day, String thema,
            String location, String distance, String carTime, String walkTime, String bycicleTime, int cost,
            String story) {
         super();
         this.follow_no = follow_no;
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
      
      

      
      public FollowemeDto(int follow_no, String email) {
         super();
         this.follow_no = follow_no;
         this.email = email;
      }

      
      
      
      public FollowemeDto(String title, String cover_img, int follow_no, String email, String follow_start_day,
            String follow_end_day, String thema, String location, String distance, String carTime, String walkTime,
            String bycicleTime, int cost, String story, int favor) {
         super();
         this.title = title;
         this.cover_img = cover_img;
         this.follow_no = follow_no;
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
         this.favor = favor;
      }

      public String getTitle() {
         return title;
      }

      public void setTitle(String title) {
         this.title = title;
      }

      public String getCover_img() {
         return cover_img;
      }

      public void setCover_img(String cover_img) {
         this.cover_img = cover_img;
      }

      public int getFollow_no() {
         return follow_no;
      }

      public void setFollow_no(int follow_no) {
         this.follow_no = follow_no;
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

      public int getCost() {
         return cost;
      }

      public void setCost(int cost) {
         this.cost = cost;
      }

      public String getStory() {
         return story;
      }

      public void setStory(String story) {
         this.story = story;
      }

      public int getFavor() {
         return favor;
      }

      public void setFavor(int favor) {
         this.favor = favor;
      }
      
      
}
 