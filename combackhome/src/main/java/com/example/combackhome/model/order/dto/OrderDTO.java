package com.example.combackhome.model.order.dto;

import java.util.Date;

public class OrderDTO {
	private int onum; 
	private int ostatus; 
	private Date oday; 
	private int ocon; 
	private String userid; 
	private String name; 
	private String address; 
	private String zipcode;
	private String ome;
	private String email;
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public int getOstatus() {
		return ostatus;
	}
	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}
	public Date getOday() {
		return oday;
	}
	public void setOday(Date oday) {
		this.oday = oday;
	}
	public int getOcon() {
		return ocon;
	}
	public void setOcon(int ocon) {
		this.ocon = ocon;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getOme() {
		return ome;
	}
	public void setOme(String ome) {
		this.ome = ome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "OrderDTO [onum=" + onum + ", ostatus=" + ostatus + ", oday=" + oday + ", ocon=" + ocon + ", userid="
				+ userid + ", name=" + name + ", address=" + address + ", zipcode=" + zipcode + ", ome=" + ome
				+ ", email=" + email + "]";
	}
	public OrderDTO(int onum, int ostatus, Date oday, int ocon, String userid, String name, String address,
			String zipcode, String ome, String email) {
		this.onum = onum;
		this.ostatus = ostatus;
		this.oday = oday;
		this.ocon = ocon;
		this.userid = userid;
		this.name = name;
		this.address = address;
		this.zipcode = zipcode;
		this.ome = ome;
		this.email = email;
	}
	public OrderDTO() {
	}
	
	
	
	
}
