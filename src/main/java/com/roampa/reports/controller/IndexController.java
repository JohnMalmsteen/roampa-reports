package com.roampa.reports.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roampa.reports.data.SQLData;
import com.roampa.reports.model.FormFieldEntry;
import com.roampa.reports.service.HTMLTableBuilderService;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.ParseException;
import org.json.simple.parser.JSONParser;

@Controller
public class IndexController {
	@RequestMapping("/index")
	public void index(){
		
	}
	
	@RequestMapping(value="/process")
	@ResponseBody
	public String process(Model model, @RequestBody String string) throws UnsupportedEncodingException, ParseException
	{
		String decodedStr = URLDecoder.decode(string, "UTF-8");
		JSONParser parser = new JSONParser();
		
		Object obj = parser.parse(decodedStr);
		JSONArray array = (JSONArray)obj;
		
		Map<String, String> tablesFields = new HashMap<String, String>();
		
		
		for(Object elem : array){
			JSONObject jsonelem = (JSONObject)elem;
			if(!jsonelem.get("name").equals("action") && !jsonelem.get("name").equals("company_id")){
				tablesFields.put(jsonelem.get("name").toString(), jsonelem.get("value").toString());
			}
		}
		
		if(tablesFields.isEmpty()){
			return "No fields selected: Select from the menu on the left.";
		}else{
			List<FormFieldEntry> formList = formatArray(tablesFields);
			String query = selectStatement(formList);
			HTMLTableBuilderService tableBuilder = new HTMLTableBuilderService();
			String retValue = null;
			try {
				retValue = tableBuilder.getTable(query);
			} catch (SQLException e) {
				retValue = e.getMessage();
			}
			return retValue;
		}
	}
	
	private List<FormFieldEntry> formatArray(Map<String, String> tablesFields){
		List<FormFieldEntry> returnList = new ArrayList<FormFieldEntry>();
		
		for(Entry<String, String> entry : tablesFields.entrySet()){
			String fieldName = entry.getKey();
			fieldName = fieldName.replace('@', '.');
			String tableName = fieldName.substring(0, fieldName.indexOf('.'));
			String fieldType = fieldName.substring(fieldName.lastIndexOf('.')+1, fieldName.length());
			fieldName = fieldName.substring(0, fieldName.lastIndexOf('.'));
			String fieldValue = entry.getValue();
			fieldValue = fieldValue.replaceAll("\\;", "");
			
			returnList.add(new FormFieldEntry(fieldName, fieldType, fieldValue, tableName));
		}
		return returnList;
	}
	
	private String selectStatement(List<FormFieldEntry> formList){
		String companyId = "1"; // need to get this from some kind of context variable here
		StringBuilder query = new  StringBuilder();
		query.append("SELECT \n");
		StringBuilder fields = new StringBuilder();
		StringBuilder tables = new StringBuilder();
		Set<String> tablesInUse = new HashSet<String>();
		
		for(FormFieldEntry entry : formList){
			fields.append(entry.getFieldName() + ", ");
			if(!tablesInUse.contains(entry.getTableName())){
				tablesInUse.add(entry.getTableName());
				tables.append(entry.getTableName() + " JOIN ");
			}
		}
		tables.delete(tables.length()-6, tables.length());
		fields.delete(fields.length()-2, fields.length());
		String whereClause = prepareWhereClause(formList);
		
		query.append(fields.toString());
		query.append("\nFROM\n");
		query.append(tables.toString());
		if(whereClause.length() != 0){
			query.append("\nWHERE");
			query.append(whereClause);
			query.append(" AND\nusers_view.companyid = " + companyId);
		}else{
			query.append("\nWHERE\nusers_view.companyid = " + companyId);
		}
		return query.toString();
	}
	
	private String prepareWhereClause(List<FormFieldEntry> formList){
		String zeroTime = "00:00:00";
		String zeroDateTime = "0000-00-00 00:00:00";
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		StringBuilder whereClause = new StringBuilder();
		for(FormFieldEntry entry : formList){
			if(!entry.getFieldValue().equals("")){
				switch(entry.getFieldType()){
				case "input-varchar":
					whereClause.append("\n" + entry.getFieldName() + " LIKE '" + entry.getFieldValue() + "' AND ");
					break;
				case "input-int":
					whereClause.append("\n" + entry.getFieldName() + " = '" + entry.getFieldValue() + "' AND ");
					break;
				case "input-single-char":
					whereClause.append("\n" + entry.getFieldName() + " = '" + entry.getFieldValue().charAt(0) + "' AND ");
					break;
				case "input-multiple-char":
					whereClause.append("\n" + entry.getFieldName() + " LIKE '" + entry.getFieldValue() + "' AND ");
					break;
				case "input-startdate":
					if(entry.getFieldValue().matches("\\d{4}-\\d{2}-\\d{2}")){
						whereClause.append("\n(" + entry.getFieldName() + " BETWEEN '" + entry.getFieldValue() + " " + zeroTime + "' AND ");
						whereClause.append("\n'" + sdf.format(new Date()) + " " + zeroTime + "') AND");
					}
					break;
				case "input-enddate":
					if(entry.getFieldValue().matches("\\d{4}-\\d{2}-\\d{2}")){
						whereClause.append("\n(" + entry.getFieldName() + " BETWEEN '"+ zeroDateTime + "' AND ");
						whereClause.append("\n'" + entry.getFieldValue() + " " + zeroTime + "') AND");
					}
					break;
				}
			}
		}
		
		if(whereClause.length() > 5)
			whereClause.delete(whereClause.length()-4, whereClause.length());
		
		return whereClause.toString();
	}
}
