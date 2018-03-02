package model.bean;

public class TimesBean {
	private String name;
	private String roomName;
	private java.util.Date goTime;
	private java.util.Date outTime;
	private String people;
	private Integer telephone;
	private Integer goInt;
	private Integer outInt;
	private Integer price;
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
	public java.util.Date getGoTime() {
		return goTime;
	}
	public void setGoTime(java.util.Date goTime) {
		this.goTime = goTime;
	}
	public java.util.Date getOutTime() {
		return outTime;
	}
	public void setOutTime(java.util.Date outTime) {
		this.outTime = outTime;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public Integer getTelephone() {
		return telephone;
	}
	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}
	public Integer getGoInt() {
		return goInt;
	}
	public void setGoInt(Integer goInt) {
		this.goInt = goInt;
	}
	public Integer getOutInt() {
		return outInt;
	}
	public void setOutInt(Integer outInt) {
		this.outInt = outInt;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "TimesBean [name=" + name + ", roomName=" + roomName + ", goTime=" + goTime + ", outTime=" + outTime
				+ ", people=" + people + ", telephone=" + telephone + ", goInt=" + goInt + ", outInt=" + outInt
				+ ", price=" + price + "]";
	}
	
	
	
	
	
	
	
}
