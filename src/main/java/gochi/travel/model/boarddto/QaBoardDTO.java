package gochi.travel.model.boarddto;

public class QaBoardDTO {
	private int rnum;
	private int qaBoardNo;
	private String qaTitle;
	private int qaFavor;
	private String email;
	private String qaContent;
	private String qaDate;
	private int qaHits;
	
	public QaBoardDTO() {}

	public QaBoardDTO(int rnum, int qaBoardNo, String qaTitle, int qaFavor, String email, String qaContent,
			String qaDate, int qaHits) {
		super();
		this.rnum = rnum;
		this.qaBoardNo = qaBoardNo;
		this.qaTitle = qaTitle;
		this.qaFavor = qaFavor;
		this.email = email;
		this.qaContent = qaContent;
		this.qaDate = qaDate;
		this.qaHits = qaHits;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getQaBoardNo() {
		return qaBoardNo;
	}

	public void setQaBoardNo(int qaBoardNo) {
		this.qaBoardNo = qaBoardNo;
	}

	public String getQaTitle() {
		return qaTitle;
	}

	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}

	public int getQaFavor() {
		return qaFavor;
	}

	public void setQaFavor(int qaFavor) {
		this.qaFavor = qaFavor;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}

	public String getQaDate() {
		return qaDate;
	}

	public void setQaDate(String qaDate) {
		this.qaDate = qaDate;
	}

	public int getQaHits() {
		return qaHits;
	}

	public void setQaHits(int qaHits) {
		this.qaHits = qaHits;
	}
	
	
	
	

}
