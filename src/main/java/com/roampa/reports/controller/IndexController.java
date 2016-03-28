package com.roampa.reports.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		StringBuilder builder = new StringBuilder();
		
		for(Object elem : array){
			JSONObject jsonelem = (JSONObject)elem;
			builder.append("name: " + jsonelem.get("name") + " value: " + jsonelem.get("value") + "\n");
		}
         
		return builder.toString();
	}
}
