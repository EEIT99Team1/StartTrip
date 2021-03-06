package model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.FlightorderBean;

@Repository
public class FlightorderDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public FlightorderBean select (Integer wid) {
		return getSession().get(FlightorderBean.class, wid);
	}

	@Transactional
	public List<FlightorderBean> selectByOrderid(Integer orderid) {
		List<FlightorderBean> result=null;
		if(orderid!=null) {
			String HQL="FROM FlightorderBean WHERE orderid="+orderid;
			Query<FlightorderBean> query=getSession().createQuery(HQL,FlightorderBean.class);
			result=query.list();
		}
		return result;
	}
	
	@Transactional
	public List<FlightorderBean> flightorderidCheck(String flightorderid) {
		List<FlightorderBean> result=null;
		if(flightorderid!=null) {
			String HQL="FROM FlightorderBean WHERE flightorderid='"+flightorderid+"'";
			Query<FlightorderBean> query=getSession().createQuery(HQL,FlightorderBean.class);
			result=query.list();
		}
		return result;
	}
	
	@Transactional
	public List selectBy(String selectBy) {
		String HQL="select "+selectBy+",count("+selectBy+") from FlightorderBean flight GROUP BY "+selectBy;

		Query query = getSession().createQuery(HQL);
		List result =query.list();
		
		return result;
	}
	
	@Transactional
	public FlightorderBean insert(FlightorderBean bean) {
		if(bean!=null) {
			getSession().save(bean);
			return bean;
		}		
		return null;
	}

	@Transactional
	public boolean update(Integer wid,String start,String endstart
			,String uptime,String downtime,Integer adult,
			Integer child,String fight,String model,Integer orderid,
			String flighttime,String cabin,String flightorderid,String ticketnumber) {
		FlightorderBean result = getSession().get(FlightorderBean.class,wid);
		if (result != null) {
			result.setStart(start);
			result.setEndstart(endstart);
			result.setUptime(uptime);
			result.setDowntime(downtime);
			result.setAdult(adult);
			result.setChild(child);
			result.setFlight(fight);
			result.setModel(model);
			result.setOrderid(orderid);
			result.setFlighttime(flighttime);
			result.setCabin(cabin);
			result.setFlightorderid(flightorderid);
			result.setTicketnumber(ticketnumber);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(int wid) {
		FlightorderBean result = getSession().get(FlightorderBean.class, wid);
		if (result != null) {
			this.getSession().delete(result);
			return true;
		}
		return false;
	}
}
