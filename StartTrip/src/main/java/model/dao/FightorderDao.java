package model.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.FightorderBean;

@Repository
public class FightorderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public FightorderBean get (Integer wid) {
		return getSession().get(FightorderBean.class, wid);
	}
	
	@Transactional
	public FightorderBean insert(FightorderBean bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}
}
