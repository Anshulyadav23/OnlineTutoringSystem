package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name=" subjectenrolled")
public class  SubjectEnrolled implements Serializable  {

	private static final long serialVersionUID = 4941586879331815935L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int EnrollID;
	
	@Column(name = "StudentID")
	private String StudentID;
	
	@Column(name = "SubjectID")
	private String SubjectID;
	
	@Column(name = "FacultyID")
	private String FacultyID;
	
	public SubjectEnrolled() {
		// TODO Auto-generated constructor stub
	}

	public SubjectEnrolled(int enrollID, String studentID, String subjectID, String facultyID) {
		super();
		EnrollID = enrollID;
		StudentID = studentID;
		SubjectID = subjectID;
		FacultyID = facultyID;
	}

	public int getEnrollID() {
		return EnrollID;
	}

	public void setEnrollID(int enrollID) {
		EnrollID = enrollID;
	}

	public String getStudentID() {
		return StudentID;
	}

	public void setStudentID(String studentID) {
		StudentID = studentID;
	}

	public String getSubjectID() {
		return SubjectID;
	}

	public void setSubjectID(String subjectID) {
		SubjectID = subjectID;
	}

	public String getFacultyID() {
		return FacultyID;
	}

	public void setFacultyID(String facultyID) {
		FacultyID = facultyID;
	}

	@Override
	public String toString() {
		return "SubjectEnrolled [EnrollID=" + EnrollID + ", StudentID=" + StudentID + ", SubjectID=" + SubjectID
				+ ", FacultyID=" + FacultyID + "]";
	}

	
	
	
	
	
	
}

