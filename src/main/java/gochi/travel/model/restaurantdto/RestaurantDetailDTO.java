package gochi.travel.model.restaurantdto;

public class RestaurantDetailDTO {
	private int restaurantNo;
	private int postNo;
	private String email;
	private String subject;
	private String text;
	private String img;
	
	public RestaurantDetailDTO(){}
	public RestaurantDetailDTO(int restaurantNo, int postNo, String email, String subject, String text, String img) {
		super();
		this.restaurantNo = restaurantNo;
		this.postNo = postNo;
		this.email = email;
		this.subject = subject;
		this.text = text;
		this.img = img;
	}


	public int getRestaurantNo() {
		return restaurantNo;
	}
	public void setRestaurantNo(int restaurantNo) {
		this.restaurantNo = restaurantNo;
	}
	public int getPostNo() {
		return postNo;
	}
	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	
	
}
