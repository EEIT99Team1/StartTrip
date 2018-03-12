package controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class tttt {

	public static void main(String[] args) {
		Connection conn = null;
		String connUrl = "jdbc:sqlserver://localhost:1433;databaseName=TEAM1";
		try {
			
			conn = DriverManager.getConnection(connUrl, "sa", "passw0rd");
			File f = new File("c:\\picture.jpg");
			File ff = new File("e:\\2.jpg");
			ff.delete();
			FileInputStream fis = new FileInputStream(f);
			String insertStmt = "update House set picture=?";		
			PreparedStatement stmt = conn.prepareStatement(insertStmt);
			stmt.setBinaryStream(1, fis, f.length());
			int c= stmt.executeUpdate();
			if(c!=0) {
				System.out.println("YES");
			}
			
			String selectStmt = "select * from House where name='大安民宿' ";
			stmt = conn.prepareStatement(selectStmt);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				FileOutputStream fo = new FileOutputStream("C:\\EEIT99Team1\\repository\\StartTrip\\src\\main\\webapp\\image\\House\\1.jpg");
				//FileOutputStream fo = new FileOutputStream("e:\\1.jpg");
				Blob b = rs.getBlob("picture");
				byte[] a =b.getBytes(1, (int) b.length());
				fo.write(a, 0, (int) b.length());
				fo.close();
				
				
			}
			
		} catch (Exception  e) {
			
			e.printStackTrace();
		} 

	}

}
