package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="testtable")
public class TestTable implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "TestID")
	private String testid;
	
	@Column(name = "CourseID")
	private String courseID;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "Time")
	private String time;
	
	@Column(name = "NumberOfQuestions")
	private int numberofquestions;
	
	@Column(name = "status")
	private String status;
	
	@Column(name = "Duration")
	private String duration;
	
	@Column(name = "facultyid")
	private String facultyid;
	
	@Column(name = "totalmarks")
	private double totalmarks;
	
	@Column(name = "examweightage")
	private double examweightage;
	
	public TestTable() {
		// TODO Auto-generated constructor stub
	}

	public TestTable(int iD, String testid, String courseID, String description, String time, int numberofquestions,
			String status, String duration, String facultyid, double totalmarks, double examweightage) {
		super();
		ID = iD;
		this.testid = testid;
		this.courseID = courseID;
		this.description = description;
		this.time = time;
		this.numberofquestions = numberofquestions;
		this.status = status;
		this.duration = duration;
		this.facultyid = facultyid;
		this.totalmarks = totalmarks;
		this.examweightage = examweightage;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getNumberofquestions() {
		return numberofquestions;
	}

	public void setNumberofquestions(int numberofquestions) {
		this.numberofquestions = numberofquestions;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getFacultyid() {
		return facultyid;
	}

	public void setFacultyid(String facultyid) {
		this.facultyid = facultyid;
	}

	public double getTotalmarks() {
		return totalmarks;
	}

	public void setTotalmarks(double totalmarks) {
		this.totalmarks = totalmarks;
	}

	public double getExamweightage() {
		return examweightage;
	}

	public void setExamweightage(double examweightage) {
		this.examweightage = examweightage;
	}

	@Override
	public String toString() {
		return "TestTable [ID=" + ID + ", testid=" + testid + ", courseID=" + courseID + ", description=" + description
				+ ", time=" + time + ", numberofquestions=" + numberofquestions + ", status=" + status + ", duration="
				+ duration + ", facultyid=" + facultyid + ", totalmarks=" + totalmarks + ", examweightage="
				+ examweightage + "]";
	}

		
	
	
	
}
