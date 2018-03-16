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
	private Integer orderid;
	private String start;
	private String endstart;
	private String uptime;
	private String downtime;
	private Integer adult;
	private Integer child;
	private String flight;
	private String model;
	private String flighttime;
	private String cabin;
	private String flightorderid;
	private String ticketnumber;
	

	public String getFlighttime() {
		return flighttime;
	}

	public void setFlighttime(String flighttime) {
		this.flighttime = flighttime;
	}

	public String getCabin() {
		return cabin;
	}

	public void setCabin(String cabin) {
		this.cabin = cabin.substring(0,1);
	}

	public String getFlightorderid() {
		return flightorderid;
	}

	public void setFlightorderid(String flightorderid) {
		this.flightorderid = flightorderid;
	}

	public String getTicketnumber() {
		return ticketnumber;
	}

	public void setTicketnumber(String ticketnumber) {
		this.ticketnumber = ticketnumber;
	}

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


	public String getUptime() {
		return uptime;
	}

	public void setUptime(String uptime) {
		this.uptime = uptime;
	}

	public String getDowntime() {
		return downtime;
	}

	public void setDowntime(String downtime) {
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

	@Override
	public String toString() {
		return "FlightorderBean [wid=" + wid + ", orderid=" + orderid + ", start=" + start + ", endstart=" + endstart
				+ ", uptime=" + uptime + ", downtime=" + downtime + ", adult=" + adult + ", child=" + child
				+ ", flight=" + flight + ", model=" + model + ", flighttime=" + flighttime + ", cabin=" + cabin
				+ ", flightorderid=" + flightorderid + ", ticketnumber=" + ticketnumber + "]";
	}


}
