package model.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.FightorderBean;
import model.bean.OrdermanBean;

@Repository
public class FightorderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public FightorderBean select (Integer wid) {
		return getSession().get(FightorderBean.class, wid);
	}
	
	@Transactional
	public FightorderBean insert(FightorderBean bean) {
		FightorderBean result = getSession().get(FightorderBean.class, bean.getWid());
		if(result==null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}

	@Transactional
	public boolean update(Integer wid,String start,String endstart
			,java.sql.Date update,java.sql.Date downdate,Integer adult,
			Integer child,String fight,String model,Integer orderid) {
		FightorderBean result = getSession().get(FightorderBean.class,wid);
		if (result != null) {
			result.setStart(start);
			result.setEndstart(endstart);
			result.setUpdate(update);
			result.setDowndate(downdate);
			result.setAdult(adult);
			result.setChild(child);
			result.setFight(fight);
			result.setModel(model);
			result.setOrderid(orderid);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(int wid) {
		FightorderBean result = getSession().get(FightorderBean.class, wid);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
