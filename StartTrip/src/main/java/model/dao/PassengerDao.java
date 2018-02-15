package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.Passenger;

@Repository
public class PassengerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public Passenger get(Integer wid) {
		return getSession().get(Passenger.class, wid);
	}
	@Transactional
	public Passenger insert(Passenger bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}
	
	
}
