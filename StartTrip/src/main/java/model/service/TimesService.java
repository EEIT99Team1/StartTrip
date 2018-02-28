package model.service;

import model.dao.TimesDAOJdbc;

public class TimesService {
	
TimesDAOJdbc timesDAO =new TimesDAOJdbc();

public int select(String name ,String roomName,int goint,int outint) {
	return timesDAO.SelectTime(name, roomName, goint, outint);
}




}
