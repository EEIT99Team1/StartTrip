package model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
	public OrdermanBean select(Integer orderid) {
		return getSession().get(OrdermanBean.class, orderid);
	}

	@Transactional
	public List<OrdermanBean> selectByEmail(String email) {
		List<OrdermanBean> result=null;
		if(email!=null && email.trim().length()!=0) {
			String HQL="FROM OrdermanBean WHERE email="+"'"+email+"'";
			Query<OrdermanBean> query=getSession().createQuery(HQL,OrdermanBean.class);
			result=query.list();
		}
		return result;
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
		OrdermanBean result = getSession().get(OrdermanBean.class, orderid);
		if (result != null) {
			result.setEmail(email);
			result.setStutus(stutus);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(Integer orderid) {
		OrdermanBean result = getSession().get(OrdermanBean.class, orderid);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}

}
