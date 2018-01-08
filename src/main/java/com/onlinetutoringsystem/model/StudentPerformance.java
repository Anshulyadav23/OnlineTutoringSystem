package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="studentperformance")
public class StudentPerformance implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "StudentID")
	private String studentid;
	
	@Column(name = "CourseID")
	private String courseid;
	
	@Column(name = "TestID")
	private String testid;
	
	@Column(name = "Score")
	private double	score;
	
	@Column(name = "TotalScore")
	private double totalscore;
	
	
	public StudentPerformance() {
		// TODO Auto-generated constructor stub
	}


	public StudentPerformance(int iD, String studentid, String courseid, String testid, double score,
			double totalscore) {
		super();
		ID = iD;
		this.studentid = studentid;
		this.courseid = courseid;
		this.testid = testid;
		this.score = score;
		this.totalscore = totalscore;
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


	public String getCourseid() {
		return courseid;
	}


	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}


	public String getTestid() {
		return testid;
	}


	public void setTestid(String testid) {
		this.testid = testid;
	}


	public double getScore() {
		return score;
	}


	public void setScore(double score) {
		this.score = score;
	}


	public double getTotalscore() {
		return totalscore;
	}


	public void setTotalscore(double totalscore) {
		this.totalscore = totalscore;
	}


	@Override
	public String toString() {
		return "StudentPerformance [ID=" + ID + ", studentid=" + studentid + ", courseid=" + courseid + ", testid="
				+ testid + ", score=" + score + ", totalscore=" + totalscore + "]";
	}
	
	
	
		
}
