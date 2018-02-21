package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OrdermanBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String email;
	private Integer orderid;
	private boolean stutus;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public boolean isStutus() {
		return stutus;
	}

	public void setStutus(boolean stutus) {
		this.stutus = stutus;
	}

	@Override
	public String toString() {
		return "Orderman [email" + email + ", orderid=" + orderid + ", stutus=" + stutus + "]";
	}
}
