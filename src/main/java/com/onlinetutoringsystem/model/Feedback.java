package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class Feedback implements Serializable  {

	private static final long serialVersionUID = 4941586879331815935L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "StudentID")
	private String studentid;
	
	@Column(name = "StudentName")
	private String studentname;
	
	@Column(name = "Subject")
	private String subject;
	
	@Column(name = "Message")
	private String message;
	
	
	public Feedback() {
		// TODO Auto-generated constructor stub
	}


	public Feedback(int iD, String studentid, String studentname, String subject, String message) {
		super();
		ID = iD;
		this.studentid = studentid;
		this.studentname = studentname;
		this.subject = subject;
		this.message = message;
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


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	@Override
	public String toString() {
		return "Feedback [ID=" + ID + ", studentid=" + studentid + ", studentname=" + studentname + ", subject="
				+ subject + ", message=" + message + "]";
	}
	
	
	
	
	
	
}

