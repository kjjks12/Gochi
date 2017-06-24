package gochi.travel.model.frienddto;

import java.io.Serializable;

/**
 * 마이페이지 - 친구 관련 DTO
 * @author 고준영
 * @param friendNo 친구번호
 * @param email 자신의 이메일
 * @param fEmail 자신의 이메일 기준 추가된 친구 이메일
 * @param auth 친구 수락 관련 property 6.14 추가
 */
public class FriendDTO implements Serializable{
	private int friendNo;
	private String email;
	private String fEmail;
	private int auth;
	
	public FriendDTO(){}
	/***
	 * 친구 요청시 사용하는 constructor
	 * @param email 친구요청 ID
	 * @param fEmail 친구요청 수신 ID
	 * @param auth 친구 권한 <br>권한 0이면 요청단계<br>1이면 친구관계
	 */
	public FriendDTO(String email, String fEmail, int auth) {
		this.email = email;
		this.fEmail = fEmail;
		this.auth = auth;
	}
	public int getFriendNo() {
		return friendNo;
	}
	public void setFriendNo(int friendNo) {
		this.friendNo = friendNo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getfEmail() {
		return fEmail;
	}
	public void setfEmail(String fEmail) {
		this.fEmail = fEmail;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	@Override
	public String toString() {
		return "FriendDTO [계정id=" + fEmail + ", "
				+ "친구권한=" + auth + "]";
	}
	
}
