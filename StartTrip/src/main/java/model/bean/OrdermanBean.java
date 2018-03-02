package model.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Orderman")
public class OrdermanBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderid;
	private String email;
	private Boolean stutus;


	public Boolean getStutus() {
		return stutus;
	}

	public void setStutus(Boolean stutus) {
		this.stutus = stutus;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	@Override
	public String toString() {
		return "Orderman [email" + email + ", orderid=" + orderid + ", stutus=" + stutus + "]";
	}
}
