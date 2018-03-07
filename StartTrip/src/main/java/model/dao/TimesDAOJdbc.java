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

import model.bean.TimesBean;

public class TimesDAOJdbc {
	
	
private  DataSource dataSource;
	
	
	public TimesDAOJdbc() {
		try {
			Context ctx = new InitialContext();
			dataSource = (DataSource) ctx.lookup("java:comp/env/jdbc/team1");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	
	
	
	
	
	private static final String SelectTime =
	 "select * from Times where Name=? and RoomName=? and((Goint<? and ?<Outint)or (?<=Goint and Goint<?))";
	
	public int SelectTime(String name ,String roomName,int goint,int outint) {
		ResultSet rset=null;
		int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SelectTime);) {
			stmt.setString(1, name);
			stmt.setString(2, roomName);
			stmt.setInt(3, goint);
			stmt.setInt(4, goint);
			stmt.setInt(5, goint);
			stmt.setInt(6, outint);
			rset=stmt.executeQuery();
			while (rset.next()) {
				c++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	
	
	
	private static final String Insert =
			"insert into Times (name, roomName, GoTime, OutTime, people,Telephone,Goint,Outint,price) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	
	public int Insert(TimesBean time) {
		ResultSet rset=null;
		int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(Insert);) {
			stmt.setString(1, time.getName());
			stmt.setString(2, time.getRoomName());

			stmt.setDate(3, new java.sql.Date((time.getGoTime()).getTime()));
			stmt.setDate(4,  new java.sql.Date((time.getOutTime()).getTime()));
			stmt.setString(5, time.getPeople());
			stmt.setInt(6, time.getTelephone());
			stmt.setInt(7, time.getGoInt());
			stmt.setInt(8, time.getOutInt());
			stmt.setInt(9, time.getPrice());
			
			c=stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	
	
	
	
	private static final String SelectRoom =
			 "select * from Room where Name=? and RoomName=? ";
	
	public int SelectRoom(String name ,String roomName) {
		ResultSet rset=null;
		int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SelectRoom);) {
			stmt.setString(1, name);
			stmt.setString(2, roomName);
			rset=stmt.executeQuery();
			 
			while (rset.next()) {
				c++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	
	private static final String SelectTimes =
			 "select * from Times where Name=? and RoomName=? ";
	
	public List<TimesBean> SelectTimes(String name ,String roomName) {
		ResultSet rset=null;
		List<TimesBean> times = new ArrayList<TimesBean>();
		int c=0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SelectTimes);) {
			stmt.setString(1, name);
			stmt.setString(2, roomName);
			rset=stmt.executeQuery();
			 
			while (rset.next()) {
				TimesBean bean = new TimesBean();
				bean.setGoTime(rset.getDate("GoTime"));
				bean.setOutTime(rset.getDate("OutTime"));
				times.add(bean);
				c++;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println(c);
		return times;
	}	
	
	
	
	
	
	
}
