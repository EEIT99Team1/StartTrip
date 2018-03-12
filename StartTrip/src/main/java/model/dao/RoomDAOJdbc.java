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
				bean.setPicture("http://localhost:8080/StartTrip/image/House/"+(bean.getName()).trim()+"--"+(bean.getRoomName()).trim()+".jpg");
				result.add(bean);
			//	System.out.println(bean.toString());
								
			}
			
			
		}catch (Exception e) {
			
		}
		
		return result;
	}
	
	
	private static final String INSERT_ROOM =
			"insert into Room(name,roomName,number,price,explain1,explain2,explain3) values(?,?,?,?,?,?,?)";
	public int insert_room(RoomBean room){

		int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(	INSERT_ROOM);)
		   {
			stmt.setString(1, room.getName());
			stmt.setString(2, room.getRoomName());
			stmt.setInt(3, room.getNumber());
			stmt.setInt(4, room.getPrice());
			stmt.setString(5, room.getExplain1());
			stmt.setString(6, room.getExplain2());
			stmt.setString(7, room.getExplain3());
			
			System.out.println(room.toString());
			 c=stmt.executeUpdate();
			
			
			
		}
		
		
           catch(SQLException e) {
        	   e.printStackTrace();
        	   System.out.println("NNNNNNN");
			return e.getErrorCode();
		}
		
		
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("GGGGGG");
		}
		
		
		return c;
	}
	
	
	
	
}
