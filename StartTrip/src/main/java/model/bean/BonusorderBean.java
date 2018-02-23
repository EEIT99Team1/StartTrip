package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bonusorder")
public class BonusorderBean {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer wid;
	private String email;
	private Integer id;
	private Integer wmuchs;

	@Override
	public String toString() {
		return "Bonusorder [wid=" + wid + ", email=" + email + ", id=" + id + ", wuchs=" + wmuchs + "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getWid() {
		return wid;
	}
	public void setWid(Integer wid) {
		this.wid = wid;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getWmuchs() {
		return wmuchs;
	}
	public void setWmuchs(Integer wmuchs) {
		this.wmuchs = wmuchs;
	}

}
