package com.onlinetutoringsystem.extra;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class JsonFormat {
	
	String q;
	
	List<OptionClass> a=new ArrayList<>();

	String correct;
	
	String incorrect;

	
	public JsonFormat() {
		// TODO Auto-generated constructor stub
	}

	public JsonFormat(String q, String correct, String incorrect, List<OptionClass> a) {
		super();
		this.q = q;
		this.correct = correct;
		this.incorrect = incorrect;
		this.a = a;
	}

	public String getQ() {
		return q;
	}

	public void setQ(String q) {
		this.q = q;
	}

	public String getCorrect() {
		return correct;
	}

	public void setCorrect(String correct) {
		this.correct = correct;
	}

	public String getIncorrect() {
		return incorrect;
	}

	public void setIncorrect(String incorrect) {
		this.incorrect = incorrect;
	}

	public List<OptionClass> getA() {
		return a;
	}

	public void setA(List<OptionClass> a) {
		this.a = a;
	}
	
	

}
