package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import model.bean.HouseBean;
import model.bean.RoomBean;

public class RoomDAOJdbc {

	public static void main(String[] args) {

	}
	
private  DataSource dataSource;
	
	
	public RoomDAOJdbc() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/team1");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	private static final String SELECT_ALL = "select * from Room where Name=?";
	public List<RoomBean> select(String a){
		List<RoomBean> result=new ArrayList<RoomBean>();
		ResultSet rset=null;
		//int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SELECT_ALL);)
		   {
			stmt.setString(1, a);
			rset=stmt.executeQuery();
			while (rset.next()) {
				RoomBean bean = new RoomBean();
				bean.setExplain1(rset.getString("Explain1"));
				bean.setExplain2(rset.getString("Explain2"));
				bean.setExplain3(rset.getString("Explain3"));
				bean.setName(rset.getString("name"));
				bean.setNumber(rset.getInt("Number"));
				bean.setPrice(rset.getInt("Price"));
				bean.setRoomName(rset.getString("RoomName"));
				result.add(bean);
			//	System.out.println(bean.toString());
								
			}
			
			
		}catch (Exception e) {
			
		}
		
		return result;
	}
	
}
