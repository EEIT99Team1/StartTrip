package model.service.search;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import model.bean.FlightorderBean;
import model.dao.FlightorderDao;

@Service
public class FlightorderService {
	@Autowired
	private FlightorderDao flightorderDao;

	@Transactional(readOnly = true)
	public FlightorderBean select(FlightorderBean bean) {
		FlightorderBean result = null;
		if (bean != null && bean.getOrderid() != 0) {
			result = flightorderDao.select(bean.getOrderid());
		}
		return result;
	}
	
	@Transactional(readOnly = true)
	public List<FlightorderBean> select1(FlightorderBean bean){
		List<FlightorderBean> result = null;
			if(bean!=null&&bean.getWid()!=0) {
				FlightorderBean wid = flightorderDao.select(bean.getWid());
				if(wid!=null) {
					result=new ArrayList<FlightorderBean>();
					result.add(wid);
			}
		}else {
			result = flightorderDao.select();
		}
		return result;
	}
	

	public FlightorderBean insert(FlightorderBean bean) {
		FlightorderBean result = null;
		if (bean != null) {
			result = flightorderDao.insert(bean);
		}
		return result;
	}

	public boolean update(FlightorderBean bean) {
		boolean result = false;
		if (bean != null) {
			result = flightorderDao.update(bean.getWid(), bean.getStart(), bean.getEndstart(), bean.getUptime(),
					bean.getDowntime(), bean.getAdult(), bean.getChild(), bean.getFlight(), bean.getModel(),
					bean.getOrderid());
		}
		return result;
	}

	public boolean delete(FlightorderBean bean) {
		boolean result = false;
		if (bean != null) {
			result = flightorderDao.delete(bean.getOrderid());
		}
		return result;
	}
}
