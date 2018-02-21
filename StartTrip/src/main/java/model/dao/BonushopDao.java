package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.BonushopBean;

@Repository
public class BonushopDao {
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public BonushopBean select(int ID) {
		return this.getSession().get(BonushopBean.class, ID);
	}
	public boolean update(int ID,String name,int much,int bonus) {
		BonushopBean result = this.getSession().get(BonushopBean.class, ID);
		if(result!=null) {
			result.setName(name);
			result.setMuch(much);
			result.setBonus(bonus);
			return true;
		}
		return false;
	}


}
