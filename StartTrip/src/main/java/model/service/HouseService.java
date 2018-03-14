package model.service;

import java.util.List;

import model.bean.HouseBean;
import model.dao.HouseDAOJdbc;

public class HouseService {
	HouseDAOJdbc houseDAO = new HouseDAOJdbc();
	
	
	public List<HouseBean> select(String a, String b) {
		
		
		return houseDAO.select(a,b);
	}
	
	
	public HouseBean select_account(String a, String b) {
		
		HouseBean bean= houseDAO.select_account(a,b);
		if(bean.getName()==null) 
			return null;
		else 
			return bean;
		
	}

    public HouseBean update_House(HouseBean bean) {

    	return houseDAO.update_house(bean);
    	
    }
    
    
    public int insert_house(HouseBean bean) {
    	
    	if(0==houseDAO.select_insert_account(bean.getAccount())) {
    		
    		
    		if(0==houseDAO.select_insert_name(bean.getName())) {
    			//System.out.println(houseDAO.insert_house(bean));
    			return houseDAO.insert_house(bean);
    		}
    		
    		
    		
    		return -2;    		   		
    	}

    		return -1;
   	      	    	
    }


    public HouseBean select_house(HouseBean bean) {
    	return houseDAO.SELECT_HOUSE(bean); 	
    }
    
    
    

}
