package com.onlinetutoringsystem.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="quiz")
public class Quiz implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column(name = "TestID")
	private String testid;
	
	@Column(name = "question")
	private String question;
	
	@Column(name = "QuestionType")
	private String questiontype;
	
	@Column(name = "Choices")
	private String choice;
	
	@Column(name = "Answer")
	private String answer;
	
	
	@Column(name = "DifficultyLevel")
	private String difficultylevel;
	
	@Column(name = "Marks")
	private double marks;
	
	
	public Quiz() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Quiz(int iD, String testid, String question, String questiontype, String choice, String answer,
			String difficultylevel, double marks) {
		super();
		ID = iD;
		this.testid = testid;
		this.question = question;
		this.questiontype = questiontype;
		this.choice = choice;
		this.answer = answer;
		this.difficultylevel = difficultylevel;
		this.marks = marks;
	}
	
	

	public double getMarks() {
		return marks;
	}


	public void setMarks(double marks) {
		this.marks = marks;
	}


	public String getDifficultylevel() {
		return difficultylevel;
	}

	public void setDifficultylevel(String difficultylevel) {
		this.difficultylevel = difficultylevel;
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

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getQuestiontype() {
		return questiontype;
	}

	public void setQuestiontype(String questiontype) {
		this.questiontype = questiontype;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}





	@Override
	public String toString() {
		return "Quiz [ID=" + ID + ", testid=" + testid + ", question=" + question + ", questiontype=" + questiontype
				+ ", choice=" + choice + ", answer=" + answer + ", difficultylevel=" + difficultylevel + "]";
	}

	
	
	
	
	
}
