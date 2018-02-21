package model.bean;

import java.util.LinkedHashSet;
import java.util.Set;

public class OrdermanBean {
	String email;
	int orderID;
	boolean status;
	Set<OrdermanBean> items = new LinkedHashSet<>();
	
	public OrdermanBean( String email, int orderID, boolean status,Set<OrdermanBean> items ) {
		super();
		this.email=email;
		this.orderID=orderID;
		this.status=status;
		
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Set<OrdermanBean> getItems() {
		return items;
	}

	public void setItems(Set<OrdermanBean> items) {
		this.items = items;
	}

}
