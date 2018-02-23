package model.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Bonushop")
public class BonushopBean {
	@Id
	private Integer id;
	private String name;
	private Integer much;
	private Integer bonus;

	@Override
	public String toString() {
		return "bonushop [id=" + id + ", name=" + name + ", much=" + much + ", bonus=" + bonus + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMuch() {
		return much;
	}
	public void setMuch(Integer much) {
		this.much = much;
	}
	public Integer getBonus() {
		return bonus;
	}
	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}
	
}
