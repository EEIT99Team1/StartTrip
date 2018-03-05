package model.bean;

import java.io.Serializable;

public class RoomBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private String name;
	private String roomName;
	private Integer number;
	private Integer price;
	private String  explain1;
	private String  explain2;
	private String  explain3;
	private String picture;
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
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
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
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	@Override
	public String toString() {
		return "RoomBean [name=" + name + ", roomName=" + roomName + ", number=" + number + ", price=" + price
				+ ", explain1=" + explain1 + ", explain2=" + explain2 + ", explain3=" + explain3 + "]";
	}
	
	
	
	

}
