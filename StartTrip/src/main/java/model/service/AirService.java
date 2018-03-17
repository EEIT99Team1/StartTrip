package model.service;

import java.util.ArrayList;
import java.util.List;

import model.bean.HouseBean;
import model.bean.RoomBean;
import model.dao.HouseDAOJdbc;
import model.dao.RoomDAOJdbc;
import model.dao.TimesDAOJdbc;

public class AirService {
	HouseDAOJdbc houseDAO = new HouseDAOJdbc();
	RoomDAOJdbc roomDAO =new RoomDAOJdbc();
	TimesDAOJdbc timesDAO = new TimesDAOJdbc();
	
	
	public List<HouseBean> house(String country,String area,int goint,int outint) {
		 List<HouseBean> houses=houseDAO.select(country, area);
		 List<HouseBean> House= new ArrayList<HouseBean>();
		 for(HouseBean house:houses) {
			 System.out.println("NO1: "+house.getName());
			 List<RoomBean> rooms= roomDAO.select(house.getName());
			 if(rooms.isEmpty()) {
				 //不做事
			 }
			 
			 else {
				 for(RoomBean room :rooms) {
					 if(timesDAO.SelectTime(room.getName(),room.getRoomName(), goint, outint)==0) {
						 House.add(house);
						 break;
					 }
					 
				 }
			 }
			 
		 }
		
		return House;
	}

	
	
	public List<RoomBean> room(String name,int goint,int outint){
		List<RoomBean> rooms=roomDAO.select(name);
		List<RoomBean>Room= new ArrayList<RoomBean>();
		for(RoomBean room:rooms) {
			if(timesDAO.SelectTime(name, room.getRoomName(), goint, outint)==0) {
				Room.add(room);
			}
			
			
		}
		return Room;
	}
	
	
	
}
