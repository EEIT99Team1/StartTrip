package model;

import java.util.List;

import model.bean.HouseBean;
import model.dao.HouseDAOJdbc;

public class HouseService {
	HouseDAOJdbc houseDAO = new HouseDAOJdbc();
	
	
	public List<HouseBean> select(String a, String b) {
		
		
		return houseDAO.select(a,b);
				//houseDAO.select();
	}

}
