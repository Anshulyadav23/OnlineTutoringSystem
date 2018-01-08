package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	
	@Column(name = "StudentID")
	private String studentid;
		
	@Column(name = "StudentName")
	private String studentname;
	
	@Column(name = "Address")
	private String address;
	
	@Column(name = "ContactNumber")
	private String contactnumber;
	
	@Column(name = "City")
	private String city;
	
	@Column(name = "ZipCode")
	private String zipcode;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(int iD, String studentid, String studentname, String address, String contactnumber, String city,
			String zipcode) {
		super();
		ID = iD;
		this.studentid = studentid;
		this.studentname = studentname;
		this.address = address;
		this.contactnumber = contactnumber;
		this.city = city;
		this.zipcode = zipcode;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactnumber() {
		return contactnumber;
	}

	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "Student [ID=" + ID + ", studentid=" + studentid + ", studentname=" + studentname + ", address="
				+ address + ", contactnumber=" + contactnumber + ", city=" + city + ", zipcode=" + zipcode + "]";
	}
	
		
	
	
}
