package model.service;

import model.bean.TimesBean;
import model.dao.TimesDAOJdbc;

public class TimesService {
	
	
TimesDAOJdbc timesDAO =new TimesDAOJdbc();

public int select(String name ,String roomName,int goint,int outint) {
	return timesDAO.SelectTime(name, roomName, goint, outint);
}

public int insert(TimesBean bean) {
	int c;
    c =timesDAO.SelectRoom(bean.getName(), bean.getRoomName());
	if(c==0) {
		return 0;
	}
	
	c = select(bean.getName(), bean.getRoomName(), bean.getGoInt(), bean.getOutInt());
	if(c!=0) {
		return -1;
	}
	c =timesDAO.Insert(bean);
	return c;
}


}
