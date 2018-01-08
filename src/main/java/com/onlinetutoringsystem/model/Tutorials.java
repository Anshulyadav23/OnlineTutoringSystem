package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tutorials")
public class Tutorials implements Serializable {


	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "CourseID")
	private String courseid;
	
	@Column(name = "TutorialType")
	private String tutorialstype;
	
	@Column(name = "Link")
	private String link;
	
	@Column(name = "TutorialHeading")
	private String heading;
	
	
	public Tutorials() {
		// TODO Auto-generated constructor stub
	}


	public Tutorials(int iD, String courseid, String tutorialstype, String link, String heading) {
		super();
		ID = iD;
		this.courseid = courseid;
		this.tutorialstype = tutorialstype;
		this.link = link;
		this.heading = heading;
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


	public String getTutorialstype() {
		return tutorialstype;
	}


	public void setTutorialstype(String tutorialstype) {
		this.tutorialstype = tutorialstype;
	}


	public String getLink() {
		return link;
	}


	public void setLink(String link) {
		this.link = link;
	}


	public String getHeading() {
		return heading;
	}


	public void setHeading(String heading) {
		this.heading = heading;
	}


	@Override
	public String toString() {
		return "Tutorials [ID=" + ID + ", courseid=" + courseid + ", tutorialstype=" + tutorialstype + ", link=" + link
				+ ", heading=" + heading + "]";
	}
	
	
	
	
	
	
	
	
		
}
