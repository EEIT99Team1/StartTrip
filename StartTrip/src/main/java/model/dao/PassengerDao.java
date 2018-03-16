package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.BonushopBean;
import model.bean.PassengerBean;

@Repository
public class PassengerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public PassengerBean select(int wid) {
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
	@Transactional
	public boolean update(Integer wid,String firstname,String lastname,
			Integer orderid,String phone,String kidbirthday) {
		PassengerBean result = getSession().get(PassengerBean.class, wid);
		if(result!=null) {
			result.setFirstname(firstname);
			result.setLastname(lastname);
			result.setOrderid(orderid);
			result.setPhone(phone);
			result.setKidbirthday(kidbirthday);
			return true;
		}
		return false;
	}
	@Transactional
	public boolean delete(int wid) {
		PassengerBean result = getSession().get(PassengerBean.class, wid);
		if(result!=null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
	
	
	
}
