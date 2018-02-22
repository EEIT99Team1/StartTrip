package model.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class BonushopBean {
	@Id
	private int id;
	private String name;
	private int much;
	private int bonus;

	@Override
	public String toString() {
		return "bonushop [id=" + id + ", name=" + name + ", much=" + much + ", bonus=" + bonus + "]";
	}
	public String getName() {
		return name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getMuch() {
		return much;
	}
	public void setMuch(int much) {
		this.much = much;
	}
	public int getBonus() {
		return bonus;
	}
	public void setBonus(int bonus) {
		this.bonus = bonus;
	}
	
}
