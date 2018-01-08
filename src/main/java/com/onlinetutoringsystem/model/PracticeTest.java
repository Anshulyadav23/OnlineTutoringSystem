package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="practicetest")
public class PracticeTest implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "practiceTestID")
	private String testid;
	
	@Column(name = "CourseID")
	private String courseID;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "TestName")
	private String testname;
	
	public PracticeTest() {
		// TODO Auto-generated constructor stub
	}

	public PracticeTest(int iD, String testid, String courseID, String description, String testname) {
		super();
		ID = iD;
		this.testid = testid;
		this.courseID = courseID;
		this.description = description;
		this.testname = testname;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTestid() {
		return testid;
	}

	public void setTestid(String testid) {
		this.testid = testid;
	}

	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTestname() {
		return testname;
	}

	public void setTestname(String testname) {
		this.testname = testname;
	}

	@Override
	public String toString() {
		return "PracticeTest [ID=" + ID + ", testid=" + testid + ", courseID=" + courseID + ", description="
				+ description + ", testname=" + testname + "]";
	}
	
	
	
	
}
