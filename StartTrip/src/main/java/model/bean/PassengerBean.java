package model.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Passenger")
public class PassengerBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer wid;
	private String firstname;
	private String lastname;
	private Integer orderid;
	private String phone;
	private String kidbirthday;

	public Integer getWid() {
		return wid;
	}

	public void setWid(Integer wid) {
		this.wid = wid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKidbirthday() {
		return kidbirthday;
	}

	public void setKidbirthday(String kidbirthday) {
		this.kidbirthday = kidbirthday;
	}

	@Override
	public String toString() {
		return "PassengerBean [wid=" + wid + ", firstname=" + firstname + ", lastname=" + lastname + ", orderid="
				+ orderid + ", phone=" + phone + ", kidbirthday=" + kidbirthday + "]";
	}

}
