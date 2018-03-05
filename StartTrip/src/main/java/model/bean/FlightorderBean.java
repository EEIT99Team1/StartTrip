package model.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Flightorder")
public class FlightorderBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer wid;
	private String start;
	private String endstart;
	private java.sql.Date uptime;
	private java.sql.Date downtime;
	private Integer adult;
	private Integer child;
	private String flight;
	private String model;
	private Integer orderid;

	public Integer getWid() {
		return wid;
	}

	public void setWid(Integer wid) {
		this.wid = wid;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEndstart() {
		return endstart;
	}

	public void setEndstart(String endstart) {
		this.endstart = endstart;
	}


	public java.sql.Date getUptime() {
		return uptime;
	}

	public void setUptime(java.sql.Date uptime) {
		this.uptime = uptime;
	}

	public java.sql.Date getDowntime() {
		return downtime;
	}

	public void setDowntime(java.sql.Date downtime) {
		this.downtime = downtime;
	}

	public Integer getAdult() {
		return adult;
	}

	public void setAdult(Integer adult) {
		this.adult = adult;
	}

	public Integer getChild() {
		return child;
	}

	public void setChild(Integer child) {
		this.child = child;
	}

	public String getFlight() {
		return flight;
	}

	public void setFlight(String flight) {
		this.flight = flight;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}


}
