package model.service.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.OrdermanBean;
import model.dao.OrdermanDao;

@Service
public class OrdermanService {
	@Autowired
	private OrdermanDao ordermanDao;
	
	@Transactional(readOnly=true)
	public OrdermanBean select(OrdermanBean bean){
		OrdermanBean result = null;
		if(bean!=null && bean.getOrderid()!=0) {
			result=ordermanDao.select(bean.getOrderid());
		}
		return result;
	}
	public OrdermanBean insert(OrdermanBean bean) {
		OrdermanBean result = null;
		if(bean!=null) {
			result=ordermanDao.insert(bean);
		}
		return result;
	}
	public boolean update(OrdermanBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = ordermanDao.update(bean.getEmail(),bean.getOrderid(),bean.getStutus());
		}
		return result;
	}
	public boolean delete(OrdermanBean bean){
		boolean result=false;
		if(bean!=null) {
			result = ordermanDao.delete(bean.getOrderid());
		}
		return result;
	}
}
