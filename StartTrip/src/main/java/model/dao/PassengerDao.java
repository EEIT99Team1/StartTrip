package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.PassengerBean;

@Repository
public class PassengerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public PassengerBean get(Integer wid) {
		return getSession().get(PassengerBean.class, wid);
	}
	@Transactional
	public PassengerBean insert(PassengerBean bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}
	
	
}
