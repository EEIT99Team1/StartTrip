package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Orderman")
public class OrdermanBean {
	@Id
	private String email;
	private Integer orderid;
	private Boolean stutus;

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

	public void setStutus(Boolean stutus) {
		this.stutus = stutus;
	}

	public Boolean getStutus() {
		return stutus;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	@Override
	public String toString() {
		return "Orderman [email" + email + ", orderid=" + orderid + ", stutus=" + stutus + "]";
	}
}
