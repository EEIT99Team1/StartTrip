package model.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class OrdermanDao {

	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public OrdermanDao get()
}
