package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

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
	
	
	
	
}
