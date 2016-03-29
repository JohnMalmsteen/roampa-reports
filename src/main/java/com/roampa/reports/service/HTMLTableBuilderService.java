package com.roampa.reports.service;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.roampa.reports.data.SQLData;

public class HTMLTableBuilderService {
	private SQLData sqlData = new SQLData();
	
	public String getTable(String query) throws SQLException{
		ResultSet rs = sqlData.getResults(query);
		if(rs != null){
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
			sqlData.cleanUp();
			return builder.toString();
		}
		else{
			return "MySQL Error";
		}
		
		
	}
}
