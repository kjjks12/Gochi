package gochi.travel.model.travelreviewdto;

public class TravelReviewCommentDTO {
	private int commentNo;
	private int travelNo;
	private String writerEmail;
	private String content;
	
	
	public void TravelReviewDto(){}


	public TravelReviewCommentDTO(int commentNo, int travelNo, String writerEmail, String content) {
		super();
		this.commentNo = commentNo;
		this.travelNo = travelNo;
		this.writerEmail = writerEmail;
		this.content = content;
	}


	public int getCommentNo() {
		return commentNo;
	}


	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}


	public int getTravelNo() {
		return travelNo;
	}


	public void setTravelNo(int travelNo) {
		this.travelNo = travelNo;
	}


	public String getWriterEmail() {
		return writerEmail;
	}


	public void setWriterEmail(String writerEmail) {
		this.writerEmail = writerEmail;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	
	
}
