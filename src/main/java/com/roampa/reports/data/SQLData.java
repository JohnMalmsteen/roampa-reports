package com.roampa.reports.data;

import java.sql.*;

public class SQLData {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	static final String DB_URL = "jdbc:mysql://localhost:8889/roampa";
	
	//  Database credentials
	static final String USER = "root";
	static final String PASS = "root";

	public String getResults(String query){
		Connection conn = null;
		Statement stmt = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");

			System.out.println("Connecting to database...");
			conn = DriverManager.getConnection(DB_URL,USER,PASS);

			System.out.println("Creating statement...");
			stmt = conn.createStatement();
			String sql;
			sql = query;
			ResultSet rs = stmt.executeQuery(sql);
			ResultSetMetaData metadata = rs.getMetaData();
			int numberOfColumns = metadata.getColumnCount();
			StringBuilder builder = new StringBuilder();
			builder.append("<div id='html-table'>");
			builder.append("<table><tr>");
			
			for(int i = 1; i <= numberOfColumns;  i++){
				builder.append("<th>");
				builder.append(metadata.getColumnLabel(i));
				builder.append("</th>");
			}
			builder.append("</tr><tr>");
			
			while(rs.next()){
				for(int i = 1; i <= numberOfColumns; i++){
					builder.append("<td>");
					builder.append(rs.getString(i));
					builder.append("</td>");
				}
				builder.append("</tr>");
			}
			
			rs.close();
			stmt.close();
			conn.close();
			
			return builder.toString();
			
			}catch(SQLException se){
				//Handle errors for JDBC
				return se.getMessage();
			}catch(Exception e){
				//Handle errors for Class.forName
				return e.getMessage();
			}finally{
				//finally block used to close resources
				try{
					if(stmt!=null)
						stmt.close();
				}catch(SQLException se2)
				{
					return se2.getMessage();
				}// nothing we can do
				try{
					if(conn!=null)
						conn.close();
				}catch(SQLException se){
					return se.getMessage();
				}//end finally try
			}//end try
	}
}
