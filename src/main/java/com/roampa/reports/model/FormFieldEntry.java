package com.roampa.reports.model;

public class FormFieldEntry {
	private String fieldName;
	private String fieldType;
	private String fieldValue;
	private String tableName;
	
	public FormFieldEntry(String name, String type, String value, String table){
		this.fieldName = name;
		this.fieldType = type;
		this.fieldValue = value;
		this.tableName = table;
	}
	
	@Override
	public String toString() {
		return fieldName + " " + fieldType + " " + fieldValue + " " + tableName + "\n";
	}

	public String getFieldName() {
		return fieldName;
	}
	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}
	public String getFieldType() {
		return fieldType;
	}
	public void setFieldType(String fieldType) {
		this.fieldType = fieldType;
	}
	public String getFieldValue() {
		return fieldValue;
	}
	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	
}
