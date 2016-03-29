package com.roampa.reports.service;

import java.io.ByteArrayOutputStream;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.roampa.reports.data.SQLData;

public class ExcelBuilderService {
	private SQLData sqlData = new SQLData();
	
	public byte [] createExcel(String query){
		
		try {
			ResultSet rs = sqlData.getResults(query);
			ResultSetMetaData metadata = rs.getMetaData();
			
            HSSFWorkbook workbook = new HSSFWorkbook();
            HSSFSheet sheet = workbook.createSheet("FirstSheet");  

            HSSFRow rowhead = sheet.createRow(0);
            
            for(int i = 0; i < metadata.getColumnCount(); i++){
            	rowhead.createCell(i).setCellValue(metadata.getColumnLabel(i+1));
            }
            
            int j = 1;
            while(rs.next()){
            	HSSFRow row = sheet.createRow(j++);
            	for(int i = 1; i <= metadata.getColumnCount(); i++){
            		row.createCell(i-1).setCellValue(rs.getString(i));
            	}
            }

            ByteArrayOutputStream out = new ByteArrayOutputStream();
            workbook.write(out);
            out.close();
            sqlData.cleanUp();
            return out.toByteArray();  

        } catch ( Exception ex ) {
            System.out.println(ex);
            return null;
        }

	}
}
