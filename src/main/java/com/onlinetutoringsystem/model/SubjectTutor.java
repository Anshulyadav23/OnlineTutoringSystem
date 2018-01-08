package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="subjecttutor")
public class SubjectTutor implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "CourseID")
	private String courseid;
	
	@Column(name = "FacultyID")
	private String facultyid;
	
	@Column(name = "Facultyname")
	private String facultyname;
	
	@Column(name = "CourseName")
	private String coursename;
	
	@Column(name = "Day")
	private String day;
	
	@Column(name = "StartTime")
	private String starttime;
	
	@Column(name = "EndTime")
	private String endtime;
	
	public SubjectTutor() {
		// TODO Auto-generated constructor stub
	}

	public SubjectTutor(int iD, String courseid, String facultyid, String facultyname, String coursename, String day,
			String starttime, String endtime) {
		super();
		ID = iD;
		this.courseid = courseid;
		this.facultyid = facultyid;
		this.facultyname = facultyname;
		this.coursename = coursename;
		this.day = day;
		this.starttime = starttime;
		this.endtime = endtime;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
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

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getStarttime() {
		return starttime;
	}

	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}

	public String getEndtime() {
		return endtime;
	}

	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}

	@Override
	public String toString() {
		return "SubjectTutor [ID=" + ID + ", courseid=" + courseid + ", facultyid=" + facultyid + ", facultyname="
				+ facultyname + ", coursename=" + coursename + ", day=" + day + ", starttime=" + starttime
				+ ", endtime=" + endtime + "]";
	}

	
	
	
	
	
	
}
