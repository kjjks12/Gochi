package gochi.travel.model.traveldto;

public class CheckListDTO {

		private int travel_no;
		private String category;
		private String item;
		private String check;
		
		public CheckListDTO(){}
		
		public CheckListDTO(int travel_no, String category, String item, String check) {
			super();
			this.travel_no = travel_no;
			this.category = category;
			this.item = item;
			this.check = check;
		}
		
		
		public CheckListDTO(int travel_no, String item) {
			super();
			this.travel_no = travel_no;
			this.item = item;
		}
		public int getTravel_no() {
			return travel_no;
		}
		public void setTravel_no(int travel_no) {
			this.travel_no = travel_no;
		}
		public String getCategory() {
			return category;
		}
		public void setCategory(String category) {
			this.category = category;
		}
		public String getItem() {
			return item;
		}
		public void setItem(String item) {
			this.item = item;
		}
		public String getCheck() {
			return check;
		}
		public void setCheck(String check) {
			this.check = check;
		}
		
		
		
		
}
