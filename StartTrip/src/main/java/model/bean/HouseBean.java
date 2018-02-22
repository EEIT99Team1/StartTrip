package model.bean;

public class HouseBean {
	private String Name;
	private String Country;
	private String Area;
	private String Addres;
	private int Telephone;
	private String Explain ;
	//Picture image
	
	
	@Override
	public String toString() {
		return "HouseBean [Name=" + Name + ", Country=" + Country + ", Area=" + Area + ", Addres=" + Addres
				+ ", Telephone=" + Telephone + ", Explain=" + Explain + "]";
	}
	
	
	
	
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		Area = area;
	}
	public String getAddres() {
		return Addres;
	}
	public void setAddres(String addres) {
		Addres = addres;
	}
	public int getTelephone() {
		return Telephone;
	}
	public void setTelephone(int telephone) {
		Telephone = telephone;
	}
	public String getExplain() {
		return Explain;
	}
	public void setExplain(String explain) {
		Explain = explain;
	}
	

}
