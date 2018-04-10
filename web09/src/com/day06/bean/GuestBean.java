package com.day06.bean;

import java.sql.Date;

public class GuestBean {
	// javaBean 클래스 -> dto -> vo
	// 필드 직접접근 불허(보안)
	private int rn;
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;

	// JavaBean 클래스의 메서드 = getter,setter
	// 필드명의 첫글자를 대문자
	// getter - 열람기능
	//			get필드명		
	// setter - 수정기능
	//			set필드명
	
	// getter 메서드
	public int getRn(){
		return this.rn;
	}
	
	public int getSabun() {
		return sabun;
	}
	
	public String getName(){
		return this.name;
	}
	
	public Date getNalja(){
		return this.nalja;
	}
	
	public int getPay(){
		return this.pay;
	}
	
	// setter 메서드
	public void setRn(int rn){
		this.rn=rn;
	}
	
	public void setSabun(int sabun) {
		this.sabun = sabun;
	}
	
	public void setName(String name){
		this.name=name;
	}
	
	public void setNalja(Date nalja){
		this.nalja=nalja;
	}
	
	public void setPay(int pay){
		this.pay=pay;
	}
}
















