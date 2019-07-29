package com.example.combackhome.model.memo.dto;

import java.util.Date;

public class MemoDTO {
	private int idx;
	private String userid;
	private String memo;
	private int pnum;
	private Date post_date;
	//getter,setter,toString,생성자
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}
	@Override
	public String toString() {
		return "MemoDTO [idx=" + idx + ", userid=" + userid + ", memo=" + memo + ", pnum=" + pnum + ", post_date="
				+ post_date + "]";
	}
	
	
}
