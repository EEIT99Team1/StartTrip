package model.dao;

import javax.persistence.Table;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.AirLineBean;

@Repository
public class AirLineDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Transactional
	public AirLineBean get(String airlLineId) {
		return getSession().get(AirLineBean.class,airlLineId);
	}
}
