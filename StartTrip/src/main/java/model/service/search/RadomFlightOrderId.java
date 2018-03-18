package model.service.search;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dao.FlightorderDao;

@Service
public class RadomFlightOrderId {

	@Autowired
	private FlightorderDao flightOrderDao;
	
	public String radomFlightOrderId() {
		String result="";
		char arr[]= {'A','B','C','D','E','F','G','H','I','J',
					 'K','L','M','N','O','P','Q','R','S','T',
					 'U','V','W','X','Y','Z'};
		while(result.equals("")) {
			for(int i=0;i<6;i++) {
				result+=arr[((int)(Math.random()*26))];
			}
			List check=flightOrderDao.flightorderidCheck(result);
			if(!check.isEmpty()) {//此序號使用過
				result="";
			}
		}
		System.out.println(result);
		return result;
	}
}
