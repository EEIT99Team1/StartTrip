package model.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
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
				bean.setPicture("http://localhost:8080/StartTrip/image/House/"+(bean.getName()).trim()+".jpg");
				//System.out.println(bean.toString());
				result.add(bean);
				
			//	c++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	
	
	private static final String SELECT_ACCOUNT = "select * from house where Account=? and Pass=? ";
	
	public HouseBean select_account(String a,String b) {
		HouseBean bean=new HouseBean();
		ResultSet rset=null;
		//int c = 0;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(SELECT_ACCOUNT);) {
			
			stmt.setString(1,a);
			stmt.setString(2,b);
			 rset = stmt.executeQuery();
			while(rset.next()) {
				bean.setName(rset.getString("Name"));
				bean.setCountry(rset.getString("Country"));
				bean.setArea(rset.getString("Area"));
				bean.setAddres(rset.getString("Addres"));
				bean.setExplain(rset.getString("Explain"));
				bean.setTelephone(rset.getInt("Telephone"));
				bean.setPicture("http://localhost:8080/StartTrip/image/House/"+(bean.getName()).trim()+".jpg");
				bean.setAccount(rset.getString("Account"));
				bean.setPass(rset.getString("Pass"));
			//	c++;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return bean;
	}

	
	private static final String UPDATE_HOUSE =
"update House set Country=?, Area=?, Addres=?, Telephone=? , Explain=? ,Pass=? where name=? and Account=?";
	
	public HouseBean update_house(HouseBean a)  {
		HouseBean bean=null;
		try(Connection conn = dataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement(UPDATE_HOUSE);) {
			
			stmt.setString(1,a.getCountry());
			stmt.setString(2,a.getArea());
			stmt.setString(3,a.getAddres() );
			stmt.setInt(4,a.getTelephone() );
			stmt.setString(5,a.getExplain() );
			stmt.setString(6,a.getPass() );
			stmt.setString(7,a.getName() );
			stmt.setString(8,a.getAccount() );	
			int i = stmt.executeUpdate();
			if(i==1) {					
								
			 return this.select_account(a.getAccount(),a.getPass());

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
//	public HouseBean update_picture(HouseBean a)  {
//		HouseBean bean=null;
//		ResultSet rset=null;
//		try(Connection conn = dataSource.getConnection();
//			PreparedStatement stmt = conn.prepareStatement("select picture from House where name=?");) {
//			
//			stmt.setString(1,a.getName());
//			rset=stmt.executeQuery();
//			
//			if(rset.next()) {				
//				Blob b=rset.getBlob("picture");
//				byte[] bb =b.getBytes(1, (int) b.length());
//				File f = new File("C:\\EEIT99Team1\\repository\\StartTrip\\src\\main\\webapp\\image\\House\\"+(a.getName()).trim()+".jpg");
//			    FileOutputStream fo = new FileOutputStream(f);
//			    f.delete();
//			    try {
//					fo.write(bb, 0, (int) b.length());
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return bean;
//	}
//	
	
	private static final String INSERT_HOUSE =
			"insert into House(Country , Area, Addres, Telephone, Explain , Pass , name , Account) values(?,?,?,?,?,?,?,?)";
				
				public int insert_house(HouseBean a)  {
					int c=0;
					try(Connection conn = dataSource.getConnection();
						PreparedStatement stmt = conn.prepareStatement(INSERT_HOUSE);) {
						
						stmt.setString(1,a.getCountry());
						stmt.setString(2,a.getArea());
						stmt.setString(3,a.getAddres() );
						stmt.setInt(4,a.getTelephone() );
						stmt.setString(5,a.getExplain() );
						stmt.setString(6,a.getPass() );
						stmt.setString(7,a.getName() );
						stmt.setString(8,a.getAccount() );	
						c = stmt.executeUpdate();
						

					} catch (Exception e) {
						e.printStackTrace();
					}
					
					return c;
				}
	
				
				
	private static final String SELECT_insert_name = "select * from house where name=? ";
				
			public int select_insert_name(String name) {
				
					ResultSet rset=null;
					int c = 0;
					try(Connection conn = dataSource.getConnection();
						PreparedStatement stmt = conn.prepareStatement(SELECT_insert_name);) {
						
						stmt.setString(1,name);
						
						 rset = stmt.executeQuery();
						while(rset.next()) {

							c++;
						}

					} catch (SQLException e) {
						e.printStackTrace();
					}
					
					return c;
				}				
				
			
	private static final String SELECT_insert_account = "select * from house where account=? ";
			
	public int select_insert_account(String account) {
				
					ResultSet rset=null;
					int c = 0;
					try(Connection conn = dataSource.getConnection();
						PreparedStatement stmt = conn.prepareStatement(SELECT_insert_account);) {
						
						stmt.setString(1,account);
						
						 rset = stmt.executeQuery();
						while(rset.next()) {

							c++;
						}

					} catch (SQLException e) {
						e.printStackTrace();
					}
					
					return c;
				}				
	

	private static final String SELECT_HOUSE = "select * from house where account=?  ";
	
	public HouseBean SELECT_HOUSE(HouseBean house) {
				
					ResultSet rset=null;
					HouseBean bean =new HouseBean();
					int c = 0;
					try(Connection conn = dataSource.getConnection();
						PreparedStatement stmt = conn.prepareStatement(SELECT_insert_account);) {
						
						stmt.setString(1,house.getAccount());
						
						
						 rset = stmt.executeQuery();
						while(rset.next()) {
							
							bean.setName(rset.getString("Name"));
							bean.setCountry(rset.getString("Country"));
							bean.setArea(rset.getString("Area"));
							bean.setAddres(rset.getString("Addres"));
							bean.setExplain(rset.getString("Explain"));
							bean.setTelephone(rset.getInt("Telephone"));
							bean.setPicture("http://localhost:8080/StartTrip/image/House/"+(bean.getName()).trim()+".jpg");
							bean.setAccount(rset.getString("Account"));
							bean.setPass(rset.getString("Pass"));
														
						}

					} catch (SQLException e) {
						e.printStackTrace();
					}
					
					return bean;
				}				
	
	
	
	
	
}
