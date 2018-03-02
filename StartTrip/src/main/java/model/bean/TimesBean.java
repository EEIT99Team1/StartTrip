package model.bean;

import java.io.Serializable;

public class TimesBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private String name;
	private String roomName;
	private java.util.Date goTime;
	private java.util.Date outTime;
	private String people;
	private int telephone;
	@Override
	public String toString() {
		return "TimesBean [name=" + name + ", roomName=" + roomName + ", goTime=" + goTime + ", outTime=" + outTime
				+ ", people=" + people + ", telephone=" + telephone + "]";
	}
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
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	
	
	
	
	
	
	
	
	
}
