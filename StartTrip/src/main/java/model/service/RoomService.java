package model.service;

import java.util.List;

import model.bean.HouseBean;
import model.bean.RoomBean;
import model.dao.RoomDAOJdbc;

public class RoomService {
	
		RoomDAOJdbc RoomDAO =new RoomDAOJdbc();
		public List<RoomBean> select(String a) {
			
			
			return RoomDAO.select(a);
		}
		


}
