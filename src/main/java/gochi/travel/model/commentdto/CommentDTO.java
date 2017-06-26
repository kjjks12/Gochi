package gochi.travel.model.commentdto;

import org.springframework.web.multipart.MultipartFile;

public class CommentDTO {
		private int board_no;
		private String content;
		private String email;
		private String d_day;
		private MultipartFile profileImg;
		
		public CommentDTO(){}
		public CommentDTO(int board_no, String content, String email) {
			super();
			this.board_no = board_no;
			this.content = content;
			this.email = email;
		}
		
		
		public CommentDTO(int board_no, String content, String email, String d_day) {
			super();
			this.board_no = board_no;
			this.content = content;
			this.email = email;
			this.d_day = d_day;
		}
		
		
		
		
		public CommentDTO(int board_no, String content, String email, String d_day, MultipartFile profileImg) {
			super();
			this.board_no = board_no;
			this.content = content;
			this.email = email;
			this.d_day = d_day;
			this.profileImg = profileImg;
		}
		public int getBoard_no() {
			return board_no;
		}
		public void setBoard_no(int board_no) {
			this.board_no = board_no;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getD_day() {
			return d_day;
		}
		public void setD_day(String d_day) {
			this.d_day = d_day;
		}
		public MultipartFile getProfileImg() {
			return profileImg;
		}
		public void setProfileImg(MultipartFile profileImg) {
			this.profileImg = profileImg;
		}
	
		
		
}
