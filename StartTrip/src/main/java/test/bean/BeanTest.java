package test.bean;

import org.springframework.stereotype.Service;

@Service
public class BeanTest {
	private String name;
	private Integer id;
	private Integer Age;
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
	public Integer getAge() {
		return Age;
	}
	public void setAge(Integer age) {
		Age = age;
	}
	@Override
	public String toString() {
		return "Bean [name=" + name + ", id=" + id + ", Age=" + Age + "]";
	}
	
}
