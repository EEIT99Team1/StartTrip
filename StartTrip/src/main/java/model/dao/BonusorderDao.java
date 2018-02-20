package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.Bonusorder;

@Repository
public class BonusorderDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public Bonusorder select(int wid) {
		return this.getSession().get(Bonusorder.class, wid);
	}
	public boolean update(int wid,String email, int ID, int wuchs) {
		Bonusorder result = this.getSession().get(Bonusorder.class, wid);
		if(result!=null) {
			result.setEmail(email);
			result.setID(ID);
			result.setWuchs(wuchs);
			return true;
		}
		return false;
	}

}
