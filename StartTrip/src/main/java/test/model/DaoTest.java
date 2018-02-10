package test.model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DaoTest {
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
//	@Transactional
	public TestTable get(int id) {
		return getSession().get(TestTable.class, id);
	}
//	@Transactional
	public boolean insert(TestTable bean) {
		if(get(bean.getId())==null) {
			getSession().save(bean);
			return true;
		}
		return false;
	}
}
