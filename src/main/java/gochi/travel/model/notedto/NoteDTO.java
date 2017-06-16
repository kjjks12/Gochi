package gochi.travel.model.notedto;

import java.io.Serializable;

/**
 * 메세지 관련 DTO
 */
public class NoteDTO implements Serializable {
	private int noteNo;
	private String sendEmail;
	private String title;
	private String content;
	private String dDay;//to_char(sysdate,'YYYY-MM-DD HH:24:MISS')
	private int flag;
	private String receiveEmail;
	
	public NoteDTO(){}
	public NoteDTO(int noteNo, String sendEmail, String title, String content, String dDay, int flag,
			String receiveEmail) {
		this.noteNo = noteNo;
		this.sendEmail = sendEmail;
		this.title = title;
		this.content = content;
		this.dDay = dDay;
		this.flag = flag;
		this.receiveEmail = receiveEmail;
	}
	public NoteDTO(String sendEmail, String title, String content, int flag, String receiveEmail) {
		this.sendEmail = sendEmail;
		this.title = title;
		this.content = content;
		this.flag = flag;
		this.receiveEmail = receiveEmail;
	}
	public int getNoteNo() {
		return noteNo;
	}
	public void setNoteNo(int noteNo) {
		this.noteNo = noteNo;
	}
	public String getSendEmail() {
		return sendEmail;
	}
	public void setSendEmail(String sendEmail) {
		this.sendEmail = sendEmail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getdDay() {
		return dDay;
	}
	public void setdDay(String dDay) {
		this.dDay = dDay;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getReceiveEmail() {
		return receiveEmail;
	}
	public void setReceiveEmail(String receiveEmail) {
		this.receiveEmail = receiveEmail;
	}
	@Override
	public String toString() {
		return "NoteDTO [noteNo=" + noteNo + ", sendEmail=" + sendEmail + ", title=" + title + ", content=" + content
				+ ", dDay=" + dDay + ", flag=" + flag + ", receiveEmail=" + receiveEmail + "]";
	}
}
