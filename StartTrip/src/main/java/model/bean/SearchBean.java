package model.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Search")
public class SearchBean implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String aircode;
	private String airport;
	private String country;
	
	
	
	@Override
	public String toString() {
		return "SearchBean [aircode=" + aircode + ", airport=" + airport + ", country=" + country + "]";
	}
	public String getAircode() {
		return aircode;
	}
	public void setAircode(String aircode) {
		this.aircode = aircode;
	}
	public String getAirport() {
		return airport;
	}
	public void setAirport(String airport) {
		this.airport = airport;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	
}
