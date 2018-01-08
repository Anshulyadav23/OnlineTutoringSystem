package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="faculty")
public class Faculty implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "FacultyID")
	private String facultyid;
	
	@Column(name = "FacultyName")
	private String facultyname;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "Expertise")
	private String expertise;
	
	@Column(name = "ContactNumber")
	private String contactnumber;
	
	@Column(name = "Designation")
	private String designation;
	
	@Column(name = "Image")
	private String image;
	
	
	public Faculty() {
		// TODO Auto-generated constructor stub
	}


	public Faculty(int iD, String facultyid, String facultyname, String description, String expertise,
			String contactnumber, String designation, String image) {
		super();
		ID = iD;
		this.facultyid = facultyid;
		this.facultyname = facultyname;
		this.description = description;
		this.expertise = expertise;
		this.contactnumber = contactnumber;
		this.designation = designation;
		this.image = image;
	}


	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}


	public String getFacultyid() {
		return facultyid;
	}


	public void setFacultyid(String facultyid) {
		this.facultyid = facultyid;
	}


	public String getFacultyname() {
		return facultyname;
	}


	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getExpertise() {
		return expertise;
	}


	public void setExpertise(String expertise) {
		this.expertise = expertise;
	}


	public String getContactnumber() {
		return contactnumber;
	}


	public void setContactnumber(String contactnumber) {
		this.contactnumber = contactnumber;
	}


	public String getDesignation() {
		return designation;
	}


	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	@Override
	public String toString() {
		return "Faculty [ID=" + ID + ", facultyid=" + facultyid + ", facultyname=" + facultyname + ", description="
				+ description + ", expertise=" + expertise + ", contactnumber=" + contactnumber + ", designation="
				+ designation + ", image=" + image + "]";
	}


		
	
		
	
	
}
