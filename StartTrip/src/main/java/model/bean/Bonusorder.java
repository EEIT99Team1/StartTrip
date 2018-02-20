package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bonusorder {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wid;
	private String email;
	private int ID;
	private int wuchs;

	@Override
	public String toString() {
		return "Bonusorder [wid=" + wid + ", email=" + email + ", ID=" + ID + ", wuchs=" + wuchs + "]";
	}
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		this.ID = iD;
	}
	public int getWuchs() {
		return wuchs;
	}
	public void setWuchs(int wuchs) {
		this.wuchs = wuchs;
	}
}
