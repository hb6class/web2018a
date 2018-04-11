package com.day07.bean;

import java.sql.Date;

public class GuestBean {
	private int rn,sabun,pay;
	private String name;
	private Date nalja;
	
	public GuestBean() {
	}
	
	// getter, setter
	public int getRn() {
		return rn;
	}
	public int getSabun() {
		return sabun;
	}
	public String getName() {
		return name;
	}
	public Date getNalja() {
		return nalja;
	}
	public int getPay() {
		return pay;
	}
	
	public void setRn(int rn) {
		this.rn = rn;
	}
	
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}
	
	public void setPay(int pay) {
		this.pay = pay;
	}
	
}


















