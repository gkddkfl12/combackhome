package com.example.combackhome.model.shop.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductDTO {
	private int pnum; 
	private String pname; 
	private int pamount; 
	private int pprice;
	private String pimg; 
	private String pdtail; 
	private String pcata; 
	private int pcatanum; 
	private String pbrand; 
	private String main;
	private String show;
	private MultipartFile file1;
    //getter,setter
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
	public int getPcatanum() {
		return pcatanum;
	}
	public void setPcatanum(int pcatanum) {
		this.pcatanum = pcatanum;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getShow() {
		return show;
	}
	public void setShow(String show) {
		this.show = show;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	@Override
	public String toString() {
		return "ProductDTO [pnum=" + pnum + ", pname=" + pname + ", pamount=" + pamount + ", pprice=" + pprice
				+ ", pimg=" + pimg + ", pdtail=" + pdtail + ", pcata=" + pcata + ", pcatanum=" + pcatanum + ", pbrand="
				+ pbrand + ", main=" + main + ", show=" + show + ", file1=" + file1 + "]";
	}
	public ProductDTO(int pnum, String pname, int pamount, int pprice, String pimg, String pdtail, String pcata,
			int pcatanum, String pbrand, String main, String show, MultipartFile file1) {
		super();
		this.pnum = pnum;
		this.pname = pname;
		this.pamount = pamount;
		this.pprice = pprice;
		this.pimg = pimg;
		this.pdtail = pdtail;
		this.pcata = pcata;
		this.pcatanum = pcatanum;
		this.pbrand = pbrand;
		this.main = main;
		this.show = show;
		this.file1 = file1;
	}
	public ProductDTO() {
	}
	
	
	
	
	
	
	

}
