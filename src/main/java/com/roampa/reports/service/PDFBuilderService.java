package com.roampa.reports.service;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.itextpdf.text.Anchor;
import com.itextpdf.text.Chapter;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.Section;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.roampa.reports.data.SQLData;

public class PDFBuilderService {
	private SQLData sqlData = new SQLData();
	
	private static Font headerFont = new Font(FontFamily.HELVETICA, 8, Font.BOLD);
	private static Font cellFont = new Font(FontFamily.TIMES_ROMAN, 6);
	
	public byte[] createPDF(String query) {
		ResultSet rs = sqlData.getResults(query);
		
		if(rs != null){
			
			try{
				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				Document document = new Document();
				Rectangle a4 = PageSize.A4;
				Rectangle a4LandScape = a4.rotate();
				document.setPageSize(a4LandScape);
				PdfWriter.getInstance(document, baos);	
				document.open();
				addMetaData(document);
				addTable(rs, document);
				document.close();
				
				return baos.toByteArray();
				
			}catch(Exception e){
				return null;
			}
		}
		sqlData.cleanUp();
		return null;
	}
	
	private void addMetaData(Document document){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
		document.addTitle("RoamPA Report " + sdf.format(new Date()));
		document.addSubject("User Report");
		document.addKeywords("PDF, RoamPA, report");
		document.addAuthor("RoamPA Report Writer");
	}
	
	private void addTable(ResultSet rs, Document document){
		Anchor anchor = new Anchor();
		Chapter chapter = new Chapter(new Paragraph(anchor), 1);
		Section section = chapter.addSection("Results: ");
		try {
			ResultSetMetaData metadata = rs.getMetaData();
			PdfPTable table = new PdfPTable(metadata.getColumnCount());
			table.setSpacingBefore(20.0f);
			for(int i = 1; i <= metadata.getColumnCount(); i++){
				PdfPCell header = new PdfPCell(new Phrase(metadata.getColumnLabel(i).toUpperCase(), headerFont));
				header.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(header);
			}
			
			table.setHeaderRows(1);
			
			while(rs.next()){
				for(int i = 1; i <= metadata.getColumnCount(); i++){
					table.addCell(new Phrase(rs.getString(i), cellFont));
				}
			}
			
			section.add(table);
			document.add(section);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
