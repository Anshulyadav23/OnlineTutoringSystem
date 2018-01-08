package com.onlinetutoringsystem.dao;

import java.util.List;

import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;

import junit.framework.Test;

public interface AdminDAO {

	public List<Credentials> validateLogin(Credentials credentials) throws Exception;
	
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception;
	
	public Credentials getCredential(String loginid) throws Exception;
	
	public boolean saveQuiz(TestTable table) throws Exception;
	
	public boolean deleteQuiz(TestTable table) throws Exception;
	
	public TestTable getTestTableById(String testid) throws Exception;

	public boolean savequestion(Quiz quiz) throws Exception;
	
	public List<TestTable> getTestTable(String facultyid) throws Exception;
	
	public Course getCourseById(String courseid) throws Exception;
	
	public List<StudentPerformance> getStudentPerformance(String testid) throws Exception;
	
	public List<StudentPerformance> getStudentPerformance(String courseid,String studentid) throws Exception;
	
	public boolean updateCredential(Credentials credentials) throws Exception;
	
	public boolean updateFaculty(Faculty faculty) throws Exception;
	
	public Faculty getFacultyData(String facultyid) throws Exception;
	
	public boolean saveTutorial(Tutorials tutorials) throws Exception;
	
	public List<Quiz> getQuizData(String testid) throws Exception;
	
	public Quiz getQuizDataById(String questionid) throws Exception;
	
	public boolean deleteQuestion(Quiz quiz) throws Exception;
	
	public List<Quiz> getQuizData(String testid,String status) throws Exception;
	
	public List<TestTable> getTestTable(String facultyid,String courseid) throws Exception;
	
	public List<SubjectEnrolled> getStudentEnrolled(String facultyid,String courseid) throws Exception;
	
	public StudentPerformance getStudentPerformanceData(String studentid,String testid) throws Exception;
	
	public boolean savePerformance(StudentPerformance performance) throws Exception;
}
