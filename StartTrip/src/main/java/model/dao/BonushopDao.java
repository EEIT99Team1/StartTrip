package model.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.BonushopBean;
import model.bean.BonusorderBean;

@Repository
public class BonushopDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Transactional
	public BonushopBean select(int id) {
		return this.getSession().get(BonushopBean.class, id);
	}
	
	@Transactional
	public BonushopBean insert(BonushopBean bean) {
		if(bean!=null && (select(bean.getId())==null)) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}
	@Transactional
	public boolean update(int id,String name,int much,int bonus) {
		BonushopBean result = this.getSession().get(BonushopBean.class, id);
		if(result!=null) {
			result.setName(name);
			result.setMuch(much);
			result.setBonus(bonus);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(int id) {
		BonushopBean result = this.getSession().get(BonushopBean.class, id);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
