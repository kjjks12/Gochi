package gochi.travel.model.restaurantdto;

import org.springframework.web.multipart.MultipartFile;

public class RestaurantImgDTO {
	private int restaurantNo;
	private int imgNo;
	private String img;
	
	private MultipartFile imgFile;
	
	public RestaurantImgDTO() {}
	public RestaurantImgDTO(int restaurantNo, int imgNo, String img) {
		super();
		this.restaurantNo = restaurantNo;
		this.imgNo = imgNo;
		this.img = img;
	}
	
	public int getRestaurantNo() {
		return restaurantNo;
	}
	public void setRestaurantNo(int restaurantNo) {
		this.restaurantNo = restaurantNo;
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public MultipartFile getImgFile() {
		return imgFile;
	}
	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	
}
