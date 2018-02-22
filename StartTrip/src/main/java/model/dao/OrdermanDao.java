package model.dao;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.OrdermanBean;

@Repository
public class OrdermanDao {
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@Transactional
	public OrdermanBean get(int orderID) {
		return getSession().get(OrdermanBean.class, orderID);
	}

	@Transactional
	public OrdermanBean insert(OrdermanBean bean) {
		if (bean != null) {
			getSession().save(bean);
			return bean;
		}
		return null;
	}
	
}
