package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BonusorderBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wid;
	private String email;
	private int id;
	private int wmuchs;

	@Override
	public String toString() {
		return "Bonusorder [wid=" + wid + ", email=" + email + ", id=" + id + ", wuchs=" + wmuchs + "]";
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getWmuchs() {
		return wmuchs;
	}
	public void setWmuchs(int wmuchs) {
		this.wmuchs = wmuchs;
	}

}
