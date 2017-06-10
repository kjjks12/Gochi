package gochi.travel.model.mypagedto;

import java.io.Serializable;

public class MypageDTO implements Serializable{
	private String email;
	private String password;
	private String nickName;
	private String phoneNumber;
	private String profileImg;
	private String backImg;
	private String selfContent;
	
	public MypageDTO(){}
	public MypageDTO(String email, String password, String nickName, String phoneNumber, String profileImg,
			String backImg, String selfContent) {
		this.email = email;
		this.password = password;
		this.nickName = nickName;
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
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
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
	@Override
	public String toString() {
		return "MypageDTO [email=" + email + ", password=" + password + ", nickName=" + nickName + ", phoneNumber="
				+ phoneNumber + ", profileImg=" + profileImg + ", backImg=" + backImg + ", selfContent=" + selfContent
				+ "]";
	}
}
