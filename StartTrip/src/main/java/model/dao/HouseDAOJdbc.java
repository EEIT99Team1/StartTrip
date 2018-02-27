package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.bean.HouseBean;



public class HouseDAOJdbc {
	private  DataSource dataSource;
	
	
	public HouseDAOJdbc() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/team1");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
	private static final String SELECT_ALL = "select * from house where Country=? and Area=? ";
			 
	
	public List<HouseBean> select(String a,String b) {
		List<HouseBean> result=new ArrayList<HouseBean>();
		ResultSet rset=null;
		//int c = 0;
		
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);) {
			
			stmt.setString(1,a);
			stmt.setString(2,b);
			 rset = stmt.executeQuery();
			while(rset.next()) {
				HouseBean bean = new HouseBean();
				bean.setName(rset.getString("Name"));
				bean.setCountry(rset.getString("Country"));
				bean.setArea(rset.getString("Area"));
				bean.setAddres(rset.getString("Addres"));
				bean.setExplain(rset.getString("Explain"));
				bean.setTelephone(rset.getInt("Telephone"));
				//System.out.println(bean.toString());
				result.add(bean);
				
			//	c++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	
	
	
	
	
	

}
