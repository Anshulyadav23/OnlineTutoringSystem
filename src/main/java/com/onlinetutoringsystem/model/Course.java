package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="course")
public class Course implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "CourseID")
	private String courseid;
	
	@Column(name = "CourseName")
	private String coursename;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "Category")
	private String category;
	
	
	public Course() {
		// TODO Auto-generated constructor stub
	}


	public Course(String courseid, String coursename, String description, String category) {
		super();
		this.courseid = courseid;
		this.coursename = coursename;
		this.description = description;
		this.category = category;
	}


	public String getCourseid() {
		return courseid;
	}


	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}


	public String getCoursename() {
		return coursename;
	}


	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "Course [courseid=" + courseid + ", coursename=" + coursename + ", description=" + description
				+ ", category=" + category + "]";
	}
	
	
	
	
	
}
