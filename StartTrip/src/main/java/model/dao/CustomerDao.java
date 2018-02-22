package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import model.bean.CustomerBean;

public class CustomerDao {
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Transactional
	public CustomerBean select(String email) {
		return getSession().get(CustomerBean.class, email);
	}//select
	
	@Transactional
	public CustomerBean insert(CustomerBean bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}
		return null;
	}//insert
	
	@Transactional
	public boolean update() {
		
	}//update
	
	@Transactional
	public boolean delete() {
		
	}//delete
	
}
