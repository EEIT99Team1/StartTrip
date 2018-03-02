package model.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.bean.SearchBean;

@Repository
public class SearchDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@Transactional
	public SearchBean select(String aircode) {
		return this.getSession().get(SearchBean.class, aircode);
		}
	@Transactional
	public SearchBean insert(SearchBean bean) {
		if(bean!=null && (select(bean.getAircode())==null)) {
			getSession().save(bean);
			return bean;
		}
		return null;
		}
	
	@Transactional
	public boolean update(String aircode,String airport,String country) {
		SearchBean rs = this.getSession().get(SearchBean.class, aircode);
		if(rs!=null) {
			rs.setAirport(airport);
			rs.setCountry(country);
			return true;
		}
		return false;
		}
	@Transactional
	public boolean delete(String aircode) {
		SearchBean rs = this.getSession().get(SearchBean.class, aircode);
		if(rs!=null) {
			this.getSession().delete(rs);
			return true;
		}
		return false;
	}
	
	@Transactional
	public List<SearchBean> selectByCode(String aircode) {
		String HQL_SEARCH="from SearchBean WHERE aircode like '%"+aircode+"%'";
		Query<SearchBean> query = getSession().createQuery(HQL_SEARCH,SearchBean.class);
		List<SearchBean> list = query.list();
		return list;
	}
}
