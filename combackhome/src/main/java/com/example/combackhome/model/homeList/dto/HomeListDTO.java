package com.example.combackhome.model.homeList.dto;

public class HomeListDTO {
	private int pnum;
	private String pname;
	private int pamount;
	private int pprice;
	private String pimg;
	private int pfsize;
	private String pdtail;
	private String pcata;
	private String pbrand;
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	public int getPfsize() {
		return pfsize;
	}
	public void setPfsize(int pfsize) {
		this.pfsize = pfsize;
	}
	public String getPdtail() {
		return pdtail;
	}
	public void setPdtail(String pdtail) {
		this.pdtail = pdtail;
	}
	public String getPcata() {
		return pcata;
	}
	public void setPcata(String pcata) {
		this.pcata = pcata;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	@Override
	public String toString() {
		return "ProductDTO [pnum=" + pnum + ", pname=" + pname + ", pamount=" + pamount + ", pprice=" + pprice
				+ ", pimg=" + pimg + ", pfsize=" + pfsize + ", pdtail=" + pdtail + ", pcata=" + pcata + ", pbrand="
				+ pbrand + "]";
	}
	public HomeListDTO(int pnum, String pname, int pamount, int pprice, String pimg, int pfsize, String pdtail,
			String pcata, String pbrand) {
		super();
		this.pnum = pnum;
		this.pname = pname;
		this.pamount = pamount;
		this.pprice = pprice;
		this.pimg = pimg;
		this.pfsize = pfsize;
		this.pdtail = pdtail;
		this.pcata = pcata;
		this.pbrand = pbrand;
	}
	public HomeListDTO() {

	}
	
	

}
