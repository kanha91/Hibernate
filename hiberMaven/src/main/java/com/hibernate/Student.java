package com.hibernate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
//@Entity(name="Student_Details")
//@Table(name="mystudents")
public class Student {
	
	@Id
	private int id;
	private String name;
	private String mobile;
	private String city;
	
	//constructor
	
	public Student(int id, String name, String mobile, String city) {
		super();
		this.id = id;
		this.name = name;
		this.mobile = mobile;
		this.city = city;
	}
	
	//default constructor
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	//setter and getter

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", mobile=" + mobile + ", city=" + city + "]";
	}

//	@Override
//	public String toString() {
//		// TODO Auto-generated method stub
//		return this.id + " : " + this.name + " : " + this.mobile + " : " + this.city ;
//	} 
	
	
	
	
	
	
	
	
	
}
