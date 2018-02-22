package model.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.BonusorderBean;
import model.bean.FightorderBean;

@Repository
public class BonusorderDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Transactional
	public BonusorderBean select(int wid) {
		return this.getSession().get(BonusorderBean.class, wid);
	}

	@Transactional
	public BonusorderBean insert(BonusorderBean bean) {
		BonusorderBean result = getSession().get(BonusorderBean.class, bean.getWid());
		if(result==null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}
	
	@Transactional
	public boolean update(int wid,String email, int id, int wmuchs) {
		BonusorderBean result = this.getSession().get(BonusorderBean.class, wid);
		if(result!=null) {
			result.setEmail(email);
			result.setId(id);
			result.setWmuchs(wmuchs);
			return true;
		}
		return false;
	}	


	@Transactional
	public boolean delete(int wid) {
		BonusorderBean result = getSession().get(BonusorderBean.class, wid);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
