package model.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.OrdermanBean;
import model.bean.PassengerBean;

@Repository
public class OrdermanDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Transactional
	public OrdermanBean select(String email) {
		return getSession().get(OrdermanBean.class, email);
	}

	@Transactional
	public OrdermanBean insert(OrdermanBean bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}
		return null;
	}

	@Transactional
	public boolean update(String email, Integer orderid, boolean stutus) {
		OrdermanBean result = getSession().get(OrdermanBean.class, email);
		if (result != null) {
			result.setOrderid(orderid);
			result.setStutus(stutus);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(String email) {
		OrdermanBean result = getSession().get(OrdermanBean.class, email);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
