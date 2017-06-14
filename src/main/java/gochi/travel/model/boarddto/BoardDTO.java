package gochi.travel.model.boarddto;

public class BoardDTO {
	private int boardno;
	private String email;
	private String title;
	private int favor;
	private String content;
	private String dDay;
	private String hits;
	
	public BoardDTO(){}
	
	public BoardDTO(String title, String content) {
		super();
		this.title = title;
		this.content = content;
	}

	public BoardDTO(int boardno, String email, String title, int favor, String content, String dDay, String hits) {
		super();
		this.boardno = boardno;
		this.email = email;
		this.title = title;
		this.favor = favor;
		this.content = content;
		this.dDay = dDay;
		this.hits = hits;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoard_no(int boardno) {
		this.boardno = boardno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getFavor() {
		return favor;
	}
	public void setFavor(int favor) {
		this.favor = favor;
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
	public String getHits() {
		return hits;
	}
	public void setHits(String hits) {
		this.hits = hits;
	}
	
	
	

}
