package com.roampa.reports.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.roampa.reports.model.FormFieldEntry;

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
	public String process(Model model, @RequestBody String string) throws UnsupportedEncodingException, ParseException{
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
			StringBuilder builder = new StringBuilder();
			List<FormFieldEntry> formList = formatArray(tablesFields);
			for(FormFieldEntry entry : formList){
				builder.append(entry.toString());
			}
			return builder.toString();
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
			
			returnList.add(new FormFieldEntry(fieldName, fieldType, fieldValue, tableName));
		}
		return returnList;
	}
}
