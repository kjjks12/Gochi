package gochi.travel.model.restaurantdto;

public class RestaurantDTO {
	private int restaurantNo;
	private String classification;
	private String area;
	private String explanation;
	private String restaurantName;
	private String operatingTime;
	private String holiday;
	private String phone;
	private String email;
	private String remark;
	
	private int wish;
	private int bean;
	
	
	public RestaurantDTO() {}
	
	public RestaurantDTO(int restaurantNo, String classification, String area, String explanation,
			String restaurantName, String operatingTime, String holiday, String phone, String email, int wish,
			int bean, String remark) {
		super();
		this.restaurantNo = restaurantNo;
		this.classification = classification;
		this.area = area;
		this.explanation = explanation;
		this.restaurantName = restaurantName;
		this.operatingTime = operatingTime;
		this.holiday = holiday;
		this.phone = phone;
		this.email = email;
		this.wish = wish;
		this.bean = bean;
		this.remark = remark;
	}
	
	public RestaurantDTO(String classification, String area, String explanation, String restaurantName,
			String operatingTime, String holiday, String phone, String email ,String remark) {
		super();
		this.classification = classification;
		this.area = area;
		this.explanation = explanation;
		this.restaurantName = restaurantName;
		this.operatingTime = operatingTime;
		this.holiday = holiday;
		this.phone = phone;
		this.email = email;
		this.remark = remark;
	}
	
	

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getRestaurantNo() {
		return restaurantNo;
	}

	public void setRestaurantNo(int restaurantNo) {
		this.restaurantNo = restaurantNo;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getExplanation() {
		return explanation;
	}

	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}

	public String getRestaurantName() {
		return restaurantName;
	}

	public void setRestaurantName(String restaurantName) {
		this.restaurantName = restaurantName;
	}

	public String getOperatingTime() {
		return operatingTime;
	}

	public void setOperatingTime(String operatingTime) {
		this.operatingTime = operatingTime;
	}

	public String getHoliday() {
		return holiday;
	}

	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getWish() {
		return wish;
	}

	public void setWish(int wish) {
		this.wish = wish;
	}

	public int getBean() {
		return bean;
	}

	public void setBean(int bean) {
		this.bean = bean;
	}
	
	
}
