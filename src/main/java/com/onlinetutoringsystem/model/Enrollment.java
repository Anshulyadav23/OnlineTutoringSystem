package com.onlinetutoringsystem.model;


public class Enrollment {

	private String courseid;
	
	private String facultyid;
	
	private String subjectname;
	
	private String facultyname;
	
	public Enrollment() {
		// TODO Auto-generated constructor stub
	}

	public Enrollment(String courseid, String facultyid, String subjectname, String facultyname) {
		super();
		this.courseid = courseid;
		this.facultyid = facultyid;
		this.subjectname = subjectname;
		this.facultyname = facultyname;
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

	public String getSubjectname() {
		return subjectname;
	}

	public void setSubjectname(String subjectname) {
		this.subjectname = subjectname;
	}

	public String getFacultyname() {
		return facultyname;
	}

	public void setFacultyname(String facultyname) {
		this.facultyname = facultyname;
	}

	@Override
	public String toString() {
		return "Enrollment [courseid=" + courseid + ", facultyid=" + facultyid + ", subjectname=" + subjectname
				+ ", facultyname=" + facultyname + "]";
	}
	
	
	
	
}
