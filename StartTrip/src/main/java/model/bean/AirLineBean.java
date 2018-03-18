package model.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="AirLine")
public class AirLineBean {
	@Id
	private String airLineId;
	private String name;
	public String getAirLineId() {
		return airLineId;
	}
	public void setAirLineId(String airLineId) {
		this.airLineId = airLineId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "AirLineBean [airLineId=" + airLineId + ", name=" + name + "]";
	}

}
