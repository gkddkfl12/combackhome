package com.example.combackhome.model.cart.dto;

public class CartsDTO {
	
	private int cnum;  //장바구니 번호
	private int pnum;//상품 번호 
	private String pimg;
	private int camount; //개개 물품 장바구니에 담은 수량
	private String userid; //구매자 아이디
	private String name;//구매자 이름
	private String pname;//상품명
	private int pprice;//상품 가격 
	private int money;//장바구니에 있는 모든 물건 가격의 총합
	private String orders;
	private int ostatus;
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public int getCamount() {
		return camount;
	}
	public void setCamount(int camount) {
		this.camount = camount;
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
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getOrders() {
		return orders;
	}
	public void setOrders(String orders) {
		this.orders = orders;
	}
	public int getOstatus() {
		return ostatus;
	}
	public void setOstatus(int ostatus) {
		this.ostatus = ostatus;
	}
	@Override
	public String toString() {
		return "CartsDTO [cnum=" + cnum + ", pnum=" + pnum + ", pimg=" + pimg + ", camount=" + camount + ", userid="
				+ userid + ", name=" + name + ", pname=" + pname + ", pprice=" + pprice + ", money=" + money
				+ ", orders=" + orders + ", ostatus=" + ostatus + "]";
	}
	public CartsDTO(int cnum, int pnum, String pimg, int camount, String userid, String name, String pname, int pprice,
			int money, String orders, int ostatus) {
		super();
		this.cnum = cnum;
		this.pnum = pnum;
		this.pimg = pimg;
		this.camount = camount;
		this.userid = userid;
		this.name = name;
		this.pname = pname;
		this.pprice = pprice;
		this.money = money;
		this.orders = orders;
		this.ostatus = ostatus;
	}
	public CartsDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
