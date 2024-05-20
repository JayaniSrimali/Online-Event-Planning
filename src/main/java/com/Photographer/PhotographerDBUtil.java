package com.Photographer;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;





public class PhotographerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs  = null;
	
	
	
	
	public static List<Photographer> validate(String UserNameP,String PasswordP)
	{
		
		ArrayList<Photographer> Ph = new ArrayList<>();
			
		
		
		try
		{
		
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
		    String sql = "select* from Photographerprofile where UserNameP ='"+UserNameP+"'and PasswordP ='"+PasswordP+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
			
			    int ID = rs.getInt(1);
			    String Name = rs.getString(2);
				String Address = rs.getString(3);
				String NIC = rs.getString(4);
			    String Dateofbirthday = rs.getString(5);
			    String Gender = rs.getString(6);
			    String Email = rs.getString(7);
			    String ContactNumber = rs.getString(8);
			    String UserName = rs.getString(9);
				String Password = rs.getString(10);
				
				Photographer P = new Photographer(ID,Name,Address,NIC,Dateofbirthday,Gender,Email,ContactNumber,UserName,Password);
				
				Ph.add(P);
			}
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return Ph;
	}
	
	
	
	public static Photographer getCustomer(int cid) {
	    Photographer customer=null;

	    try (Connection con = DBConnect.getConnection();
	         PreparedStatement pstmt = con.prepareStatement("SELECT * FROM photographerprofile WHERE id=?")) {

	        pstmt.setInt(1, cid);
	        try (ResultSet rs = pstmt.executeQuery()) {
	            if (rs.next()) {
	            	int ID = rs.getInt(1);
				    String Name = rs.getString(2);
					String Address = rs.getString(3);
					String NIC = rs.getString(4);
				    String Dateofbirthday = rs.getString(5);
				    String Gender = rs.getString(6);
				    String Email = rs.getString(7);
					String ContactNumber = rs.getString(8);
				    String UserName = rs.getString(9);
					String Password = rs.getString(10);

	                Photographer cus = new Photographer(ID,Name,Address,NIC,Dateofbirthday,Gender,Email,ContactNumber,UserName,Password);
	                customer = cus;
	            }
	        }

	    } catch (Exception e) {
	        e.printStackTrace(); // or log the exception
	    }

	    return customer;
	}
	public static boolean insertPackage(String Package_ID,String Category,String Package_Name,String Package_Description,float Package_Price)
	{
		boolean isSuccess = false;

		
		try
		{
			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into package value (0,'"+Category+"','"+Package_Name+"','"+Package_Description+"','"+Package_Price+"')";
			int rs =stmt.executeUpdate(sql);
		    
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccess;
		
		
		
	}
	
	public static boolean updatephotographer(String  ID,String  Name,String  Address,String  NIC,String  Dateofbirthday,String  Gender,String  Email,String  ContactNumber,String  UserNameP,String  PasswordP)
	{
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update photographerprofile set Name ='"+Name+"',Address = '"+Address+"',NIC ='"+NIC+"',Dateofbirthday ='"+Dateofbirthday+"',Gender = '"+Gender+"',Email ='"+Email+"',ContactNumber = '"+ContactNumber +"', UserNameP = '"+UserNameP +"',PasswordP = '"+PasswordP+"' "+ " where ID ='"+ID+"' ";  
			int rs =stmt.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
		
		return isSuccess;
		
		
		
	}
	
	public static List<Photographer>  getPhotographerDetails(String iD)
	{
		int convertedID = Integer.parseInt(iD);
		
		ArrayList<Photographer> Ph = new ArrayList<>();
		
		try
		{
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from photographerprofile where ID = '"+convertedID+"' ";
			rs =stmt.executeQuery(sql);
			
			
			while(rs.next())
			{
			    int ID = rs.getInt(1);
			    String Name = rs.getString(2);
				String Address = rs.getString(3);
				String NIC = rs.getString(4);
			    String Dateofbirthday = rs.getString(5);
			    String Gender = rs.getString(6);
			    String Email = rs.getString(7);
				String ContactNumber = rs.getString(8);
			    String UserName = rs.getString(9);
				String Password = rs.getString(10);
				
				Photographer P = new Photographer(ID,Name,Address,NIC,Dateofbirthday,Gender,Email,ContactNumber,UserName,Password);
				Ph.add(P);
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return Ph;
	}
	
	public static boolean deletephotographer(String ID)
	{
		int convID = Integer.parseInt(ID);
		
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from photographerprofile where ID = '"+convID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
}






















