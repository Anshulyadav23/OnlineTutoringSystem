package com.onlinetutoringsystem.extra;

public class OptionClass {

	String option;
	
	boolean correct;
	
	public OptionClass() {
		// TODO Auto-generated constructor stub
	}

	public OptionClass(String option, boolean correct) {
		super();
		this.option = option;
		this.correct = correct;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}
	
	
	
	
}
