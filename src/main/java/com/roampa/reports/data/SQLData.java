package com.roampa.reports.data;

import java.sql.*;

import com.roampa.reports.config.AppConfig;

public class SQLData {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = AppConfig.getDbUrl();
	
	//  Database credentials
	static final String USER = AppConfig.getDbUser();
	static final String PASS = AppConfig.getDbPass();

	private Connection conn = null;
	private Statement stmt = null;
	private ResultSet rs = null;
	
	public ResultSet getResults(String query){
		try{
			Class.forName(JDBC_DRIVER);

			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = query;
			rs = stmt.executeQuery(sql);
			
			return rs;
			
		}catch(SQLException se){
			//Handle errors for JDBC
			System.out.println(se.getMessage());
			cleanUp();
			return null;
		}catch(Exception e){
			//Handle errors for Class.forName
			System.out.println((e.getMessage()));
			cleanUp();
			return null;
		}
	}
	
	public void cleanUp(){
		
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
