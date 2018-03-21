package model.dao;

import java.util.Collections;
import java.util.Comparator;
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
		if (bean != null && (select(bean.getAircode()) == null)) {
			getSession().save(bean);
			return bean;
		}
		return null;
	}

	@Transactional
	public boolean update(String aircode, String airport, String country) {
		SearchBean rs = this.getSession().get(SearchBean.class, aircode);
		if (rs != null) {
			rs.setAirport(airport);
			rs.setCountry(country);
			return true;
		}
		return false;
	}

	@Transactional
	public boolean delete(String aircode) {
		SearchBean rs = this.getSession().get(SearchBean.class, aircode);
		if (rs != null) {
			this.getSession().delete(rs);
			return true;
		}
		return false;
	}

	@Transactional
	public List<SearchBean> selectByCode(String aircode) {
		String HQL_SEARCH = "from SearchBean WHERE aircode like'" + aircode + "%'";
		Query<SearchBean> query = getSession().createQuery(HQL_SEARCH, SearchBean.class);
		List<SearchBean> list = query.list();

		//更改排列順序
		Collections.sort(list, new Comparator<SearchBean>() {
			public int compare(SearchBean s1, SearchBean s2) {
				char[] s1codes=s1.getAircode().toCharArray();
				char[] s2codes=s2.getAircode().toCharArray();
				char[] aircodes=aircode.toCharArray();
				
				for(int i=0,max=aircodes.length;i<max;i++) {
					for(int j=0,jmax=s2codes.length;j<jmax;j++) {
						int s1num=Math.abs(s1codes[j]-aircodes[i]);
						int s2num=Math.abs(s2codes[j]-aircodes[i]);
					
						if (s1num>s2num) {
							return 1;
						} else if (s1num<s2num) {
							return -1;
						}
					}
				}
				return 0;
			}
		});
		return list;
	}

	@Transactional
	public List<SearchBean> selectByAirport(String airport) {
		String HQL_SEARCH = "from SearchBean WHERE airport like '%" + airport + "%'";
		Query<SearchBean> query = getSession().createQuery(HQL_SEARCH, SearchBean.class);
		List<SearchBean> list = query.list();
		return list;
	}
}
