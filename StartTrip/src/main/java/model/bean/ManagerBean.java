package model.bean;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Manager")
public class ManagerBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	private String id;
	private String password;
	
	@Override
	public String toString() {
		return "ManagerBean [id=" + id + ", password=" + password + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
