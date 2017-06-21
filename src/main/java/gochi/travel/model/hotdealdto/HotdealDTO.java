package gochi.travel.model.hotdealdto;

public class HotdealDTO {

	/**1. 링크url*/
	private String url;
	/**1. 이미지 경로*/
	private String imgUrl;
	/**1. 제목*/
	private String title;
	/**1. 가격표시*/
	private String price;

	/**
	 * 기본 생성자
	 */
	public HotdealDTO() {}

	/**
	 * 
	 * @param company
	 * @param url
	 * @param imgUrl
	 * @param title
	 * @param price
	 */
	public HotdealDTO(String url, String imgUrl, String title, String price) {
		super();
		this.url = url;
		this.imgUrl = imgUrl;
		this.title = title;
		this.price = price;
	}



	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
	

}
