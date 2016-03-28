package com.roampa.reports.model;

import java.sql.Date;
import java.sql.Timestamp;

public class User {
	private int id;
	private char gender;
	private int numberOfDependants;
	private String username;
	private String title;
	private String firstname;
	private String lastname;
	private Date dateofbirth;
	private String email;
	private int companyid;
	private String primaryAddressTag;
	private String phonenumber;
	private Timestamp create_at;
	private Timestamp lastvisit_at;
	private int status;
	private String tag;
	private String address1;
	private String address2;
	private String city;
	private String region;
	private String zipcode;
	private String country;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	
	public int getNumberOfDependants() {
		return numberOfDependants;
	}
	public void setNumberOfDependants(int numberOfDependants) {
		this.numberOfDependants = numberOfDependants;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	
	public String getPrimaryAddressTag() {
		return primaryAddressTag;
	}
	public void setPrimaryAddressTag(String primaryAddressTag) {
		this.primaryAddressTag = primaryAddressTag;
	}
	
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	public Timestamp getCreate_at() {
		return create_at;
	}
	public void setCreate_at(Timestamp create_at) {
		this.create_at = create_at;
	}
	
	public Timestamp getLastvisit_at() {
		return lastvisit_at;
	}
	public void setLastvisit_at(Timestamp lastvisit_at) {
		this.lastvisit_at = lastvisit_at;
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
