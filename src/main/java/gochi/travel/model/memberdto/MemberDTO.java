package gochi.travel.model.memberdto;

public class MemberDTO {
	private String email;
	private String password;
	private String nickname;
	private String phoneNumber;
	private String profileImg;
	private String backImg;
	private String selfContent;
	
	public MemberDTO(){}
	public MemberDTO(String email, String password, String nickname, String phoneNumber, String profileImg,
			String backImg, String selfContent) {
		super();
		this.email = email;
		this.password = password;
		this.nickname = nickname;
		this.phoneNumber = phoneNumber;
		this.profileImg = profileImg;
		this.backImg = backImg;
		this.selfContent = selfContent;
	}


	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public String getBackImg() {
		return backImg;
	}
	public void setBackImg(String backImg) {
		this.backImg = backImg;
	}
	public String getSelfContent() {
		return selfContent;
	}
	public void setSelfContent(String selfContent) {
		this.selfContent = selfContent;
	}
	
	
	
}
