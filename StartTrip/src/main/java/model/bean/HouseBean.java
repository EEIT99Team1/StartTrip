package model.bean;

import java.io.Serializable;

public class HouseBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private String name;
	private String country;
	private String area;
	private String addres;
	private Integer telephone;
	private String explain ;
	private String Picture ;
	
	public String getPicture() {
		return Picture;
	}
	public void setPicture(String picture) {
		Picture = picture;
	}
	public void setTelephone(Integer telephone) {
		this.telephone = telephone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddres() {
		return addres;
	}
	public void setAddres(String addres) {
		this.addres = addres;
	}
	public int getTelephone() {
		return telephone;
	}
	public void setTelephone(int telephone) {
		this.telephone = telephone;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	@Override
	public String toString() {
		return "HouseBean [name=" + name + ", country=" + country + ", area=" + area + ", addres=" + addres
				+ ", telephone=" + telephone + ", explain=" + explain + "]";
	}
	
	
	
	

}
