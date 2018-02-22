package model.bean;

public class RoomBean {
	private String Name;
	private String RoomName;
	private int Number;
	private int price;
	private String  Explain1;
	private String  Explain2;
	private String  Explain3;
	//Picture image,
	
	
	@Override
	public String toString() {
		return "RoomBean [Name=" + Name + ", RoomName=" + RoomName + ", Number=" + Number + ", price=" + price
				+ ", Explain1=" + Explain1 + ", Explain2=" + Explain2 + ", Explain3=" + Explain3 + "]";
	}
	
	
	
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getRoomName() {
		return RoomName;
	}
	public void setRoomName(String roomName) {
		RoomName = roomName;
	}
	public int getNumber() {
		return Number;
	}
	public void setNumber(int number) {
		Number = number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getExplain1() {
		return Explain1;
	}
	public void setExplain1(String explain1) {
		Explain1 = explain1;
	}
	public String getExplain2() {
		return Explain2;
	}
	public void setExplain2(String explain2) {
		Explain2 = explain2;
	}
	public String getExplain3() {
		return Explain3;
	}
	public void setExplain3(String explain3) {
		Explain3 = explain3;
	}
	
	

}
