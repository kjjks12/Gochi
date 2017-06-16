package gochi.travel.model.frienddto;

import java.io.Serializable;

public class FriendDTO implements Serializable{
	private int friendNo;
	private String email;
	private String fEmail;
	
	public FriendDTO(){}
	public FriendDTO(int friendNo, String email, String fEmail) {
		this.friendNo = friendNo;
		this.email = email;
		this.fEmail = fEmail;
	}
	public FriendDTO(String email, String fEmail) {
		super();
		this.email = email;
		this.fEmail = fEmail;
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
	@Override
	public String toString() {
		return "FriendDTO [friendNo=" + friendNo + ", email=" + email + ", fEmail=" + fEmail + "]";
	}
}
