package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="credentials")
public class Credentials implements Serializable  {

	private static final long serialVersionUID = 4941586879331815935L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "loginId")
	private String loginId;
	
	@Column(name = "password")
	private String loginPassword;
	
	@Column(name = "loginType")
	private String loginType;
	
	@Column(name = "Name")
	private String name;
	

	@Column(name = "Address")
	private String address;
	
	@Column(name = "ContactNumber")
	private String contactnumber;
	
	@Column(name = "City")
	private String city;
	
	@Column(name = "ZipCode")
	private String zipcode;
	
	@Column(name = "Country")
	private String country;
	
	
	public Credentials() {
	}


	public Credentials(int iD, String loginId, String loginPassword, String loginType, String name, String address,
			String contactnumber, String city, String zipcode, String country) {
		super();
		ID = iD;
		this.loginId = loginId;
		this.loginPassword = loginPassword;
		this.loginType = loginType;
		this.name = name;
		this.address = address;
		this.contactnumber = contactnumber;
		this.city = city;
		this.zipcode = zipcode;
		this.country = country;
	}


	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}


	public String getLoginId() {
		return loginId;
	}


	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}


	public String getLoginPassword() {
		return loginPassword;
	}


	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}


	public String getLoginType() {
		return loginType;
	}


	public void setLoginType(String loginType) {
		this.loginType = loginType;
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


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	@Override
	public String toString() {
		return "Credentials [ID=" + ID + ", loginId=" + loginId + ", loginPassword=" + loginPassword + ", loginType="
				+ loginType + ", name=" + name + ", address=" + address + ", contactnumber=" + contactnumber + ", city="
				+ city + ", zipcode=" + zipcode + ", country=" + country + "]";
	}


		
	
	
	
	
}

