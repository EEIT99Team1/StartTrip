package model.bean;

public class TimesBean {
	private String Name;
	private String RoomName;
	private java.util.Date GoTime;
	private java.util.Date OutTime;
	private String people;
	private int Telephone;
	
	
	@Override
	public String toString() {
		return "Times [Name=" + Name + ", RoomName=" + RoomName + ", GoTime=" + GoTime + ", OutTime=" + OutTime
				+ ", people=" + people + ", Telephone=" + Telephone + "]";
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


	public java.util.Date getGoTime() {
		return GoTime;
	}


	public void setGoTime(java.util.Date goTime) {
		GoTime = goTime;
	}


	public java.util.Date getOutTime() {
		return OutTime;
	}


	public void setOutTime(java.util.Date outTime) {
		OutTime = outTime;
	}


	public String getPeople() {
		return people;
	}


	public void setPeople(String people) {
		this.people = people;
	}


	public int getTelephone() {
		return Telephone;
	}


	public void setTelephone(int telephone) {
		Telephone = telephone;
	}

	
	
	
	
	
	
}
