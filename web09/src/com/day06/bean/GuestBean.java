package com.day06.bean;

import java.sql.Date;

public class GuestBean {
	// javaBean Ŭ���� -> dto -> vo
	// �ʵ� �������� ����(����)
	private int rn;
	private int sabun;
	private String name;
	private Date nalja;
	private int pay;

	// JavaBean Ŭ������ �޼��� = getter,setter
	// �ʵ���� ù���ڸ� �빮��
	// getter - �������
	//			get�ʵ��		
	// setter - �������
	//			set�ʵ��
	
	// getter �޼���
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
	
	// setter �޼���
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
















