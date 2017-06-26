package gochi.travel.model.mypagedto;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

/***
 * 마이페이지 - 프로필 관련 DTO
 * @author 고준영
 * @param email 계정 id
 * @param password 계정 비밀번호
 * @param nickName 닉네임
 * @param phoneNumber 핸드폰 번호
 * @param profileImg 프로필 이미지
 * @param backImg 프로필 뒷배경 이미지
 * @param selfContent 자기소개
 * 
 * @param profileImgFile 프로필이미지 업로드 다운로드 관련
 * @param backImgFile 프로필 커버 이미지 업로드 다운로드 관련
 * 
 */
public class MypageDTO implements Serializable{
	private String email;
	private String password;
	private String nickName;
	private String phoneNumber;
	private String profileImg;
	private String backImg;
	private String selfContent;
	
	private MultipartFile profileImgFile;
	private MultipartFile backImgFile;
	
	public MypageDTO(){}

	/**
	 * 수정 아이콘 클릭시 <br>email 기준으로 phoneNumber와 selfContent를 수정할때 사용
	 * @param email
	 * @param phoneNumber
	 * @param selfContent
	 */
	public MypageDTO(String email, String phoneNumber, String selfContent) {
		this.email = email;
		this.phoneNumber = phoneNumber;
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

	public MultipartFile getProfileImgFile() {
		return profileImgFile;
	}

	public void setProfileImgFile(MultipartFile profileImgFile) {
		this.profileImgFile = profileImgFile;
	}

	public MultipartFile getBackImgFile() {
		return backImgFile;
	}

	public void setBackImgFile(MultipartFile backImgFile) {
		this.backImgFile = backImgFile;
	}
}
