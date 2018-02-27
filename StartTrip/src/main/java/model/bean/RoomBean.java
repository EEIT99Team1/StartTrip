package model.bean;

public class RoomBean {
	private String name;
	private String roomName;
	private int number;
	private int price;
	private String  explain1;
	private String  explain2;
	private String  explain3;
	@Override
	public String toString() {
		return "RoomBean [name=" + name + ", roomName=" + roomName + ", number=" + number + ", price=" + price
				+ ", explain1=" + explain1 + ", explain2=" + explain2 + ", explain3=" + explain3 + "]";
	}
	//Picture image,
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getExplain1() {
		return explain1;
	}
	public void setExplain1(String explain1) {
		this.explain1 = explain1;
	}
	public String getExplain2() {
		return explain2;
	}
	public void setExplain2(String explain2) {
		this.explain2 = explain2;
	}
	public String getExplain3() {
		return explain3;
	}
	public void setExplain3(String explain3) {
		this.explain3 = explain3;
	}
	
	
	
	

}
