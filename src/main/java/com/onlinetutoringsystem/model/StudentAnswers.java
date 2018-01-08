package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="studentanswers")
public class StudentAnswers implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "StudentID")
	private String studentid;
	
	@Column(name = "TestID")
	private String testid;
	
	@Column(name = "QuestionID")
	private int questionID;
	
	@Column(name = "Status")
	private String status;
	
	
	@Column(name = "GivenAnswers")
	private String givenanswer;
	
	
	public StudentAnswers() {
		// TODO Auto-generated constructor stub
	}


	public StudentAnswers(int iD, String studentid, String testid, int questionID, String status,
			String givenanswer) {
		super();
		ID = iD;
		this.studentid = studentid;
		this.testid = testid;
		this.questionID = questionID;
		this.status = status;
		this.givenanswer = givenanswer;
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


	public String getTestid() {
		return testid;
	}


	public void setTestid(String testid) {
		this.testid = testid;
	}


	public int getQuestionID() {
		return questionID;
	}


	public void setQuestionID(int questionID) {
		this.questionID = questionID;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getGivenanswer() {
		return givenanswer;
	}


	public void setGivenanswer(String givenanswer) {
		this.givenanswer = givenanswer;
	}


	@Override
	public String toString() {
		return "StudentAnswers [ID=" + ID + ", studentid=" + studentid + ", testid=" + testid + ", questionID="
				+ questionID + ", status=" + status + ", givenanswer=" + givenanswer + "]";
	}
	
	
}
