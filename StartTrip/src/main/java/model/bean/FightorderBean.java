package model.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Fightorder")
public class FightorderBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer wid;
	private String start;
	private String endstart;
	private java.sql.Date update;
	private java.sql.Date downdate;
	private Integer adult;
	private Integer child;
	private String fight;
	private String model;
	private Integer orderid;

	public void setAdult(Integer adult) {
		this.adult = adult;
	}

	public void setChild(Integer child) {
		this.child = child;
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

	public java.sql.Date getUpdate() {
		return update;
	}

	public void setUpdate(java.sql.Date update) {
		this.update = update;
	}

	public java.sql.Date getDowndate() {
		return downdate;
	}

	public void setDowndate(java.sql.Date downdate) {
		this.downdate = downdate;
	}

	public int getAdult() {
		return adult;
	}

	public void setAdult(int adult) {
		this.adult = adult;
	}

	public int getChild() {
		return child;
	}

	public void setChild(int child) {
		this.child = child;
	}

	public String getFight() {
		return fight;
	}

	public void setFight(String fight) {
		this.fight = fight;
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
		return "Fightorder [wid=" + wid + ", start= " + start + ", endstart=" + endstart + ", update" + update
				+ ", downdate" + downdate + ", adult" + adult + ", child=" + child + ", fight=" + fight + ", model="
				+ model + ",orderid= " + orderid + "]";
	}
}
