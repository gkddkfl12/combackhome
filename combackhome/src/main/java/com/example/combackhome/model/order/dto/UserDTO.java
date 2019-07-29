package com.example.combackhome.model.order.dto;

import java.util.Date;

public class UserDTO {
	private String userid;
	private String passwd; 
	private int age; 
	private String name;
	private String email; 
	private String address; 
	private String zipcode; 
	private String hp; 
	private String gender; 
	private int point; 
	private Date join_date;
	private int countGender;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getJoin_date() {
		return join_date;
	}
	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}
	public int getCountGender() {
		return countGender;
	}
	public void setCountGender(int countGender) {
		this.countGender = countGender;
	}
	public UserDTO(String userid, String passwd, int age, String name, String email, String address, String zipcode,
			String hp, String gender, int point, Date join_date, int countGender) {
		this.userid = userid;
		this.passwd = passwd;
		this.age = age;
		this.name = name;
		this.email = email;
		this.address = address;
		this.zipcode = zipcode;
		this.hp = hp;
		this.gender = gender;
		this.point = point;
		this.join_date = join_date;
		this.countGender = countGender;
	}
	public UserDTO() {
	}
	
	
	
	
}