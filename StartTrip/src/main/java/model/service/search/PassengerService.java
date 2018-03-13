package model.service.search;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.PassengerBean;
import model.dao.PassengerDao;

@Service
public class PassengerService {
	@Autowired
	private PassengerDao passengerDao;

	public PassengerService() {
		passengerDao=new PassengerDao();
	}
@Transactional(readOnly=true)
	public PassengerBean select(PassengerBean bean){
		PassengerBean result = null;
			if(bean!=null&&bean.getWid()!=0) {
				result = passengerDao.select(bean.getWid());
			}
		return result;
	}
	
	public PassengerBean insert(PassengerBean bean) {
		PassengerBean result = null;
		if(bean!=null) {
			result = passengerDao.insert(bean);
		}
		return result;
	}
	
	public boolean update(PassengerBean bean) {
		boolean result= false;
		if(bean!=null) {
			result = passengerDao.update(
					bean.getWid(), bean.getFirstname(), bean.getLastname(),
					bean.getExpiry(), bean.getPassport(), bean.getOrderid());
		}
		return result;
	}
	
	public boolean delete(PassengerBean bean) {
		boolean result = false;
		if(bean!=null) {
			result = passengerDao.delete(bean.getWid());
		}
		return result;
		
	}
	
}
