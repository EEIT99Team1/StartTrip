package model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import model.bean.CustomerBean;
@Repository
public class CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	@Transactional
	public CustomerBean select(String email) {
		return getSession().get(CustomerBean.class, email);
	}//select
	
	@Transactional
	public List<CustomerBean> selectAll(){
		List<CustomerBean> result = null;
		String HQL ="From CustomerBean";
		Query<CustomerBean> query= getSession().createQuery(HQL, CustomerBean.class);
		result = query.list();
		return result;
	}
	
	
	@Transactional
	public CustomerBean insert(CustomerBean bean) {
		if(bean!=null && (select(bean.getEmail())==null)) {
			getSession().save(bean);
			return bean;
		}
		return null;
	}
	
	@Transactional
	public boolean update(String email,String password,String firstname
			,String lastname,String country,String birthday,String phonenumber,int bonus) {
		CustomerBean rs = this.getSession().get(CustomerBean.class, email);
		if(rs!=null) {
			rs.setPassword(password);
			rs.setFirstname(firstname);
			rs.setLastname(lastname);
			rs.setCountry(country);
			rs.setBirthday(birthday);
			rs.setPhonenumber(phonenumber);
			rs.setBonus(bonus);
			return true;
		}
		return false;
		
	}//update
	
	@Transactional
	public boolean delete(String email) {
		CustomerBean rs=this.getSession().get(CustomerBean.class, email);
		if(rs!=null) {
			this.getSession().delete(rs);
			return true;
		}
		return false;
	}//delete
	
}
