package test.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ServiceTest {
	@Autowired
	private DaoTest dao;
	
	@Transactional
	public void insert(TestTable bean) {
		dao.insert(bean);
	}
	
}
