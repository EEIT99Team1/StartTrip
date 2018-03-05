package model.service.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.CustomerBean;
import model.dao.CustomerDao;
@Service
public class LoginService {
	
	@Autowired
	private CustomerDao dao;
	
	public CustomerBean checkEmailPassword(String email, String password) {
		CustomerBean bean = dao.select(email);
		if (bean != null && password.equals(bean.getPassword())) {
			return bean;
		}
		return null;
	}
}
