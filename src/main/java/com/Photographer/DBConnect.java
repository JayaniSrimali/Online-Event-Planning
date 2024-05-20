package com.Photographer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/eventplanning";
	private static String UserName = "root";
	private static String password = "PHW#84#jeor";
	private static Connection con;
	
	public static Connection  getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,UserName,password );
			
		}
		catch(Exception e)
		{
			System.out.println("Database Connection Not Success!");
		}
		
		return con;
	}
}
