package com.onlinetutoringsystem.dao;

import java.util.List;

import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Feedback;
import com.onlinetutoringsystem.model.PracticeTest;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.Student;
import com.onlinetutoringsystem.model.StudentAnswers;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;

import junit.framework.Test;

public interface OnlineTutoringSystemDAO {

	public List<Credentials> validateLogin(Credentials credential)throws Exception;
	
	public List<TestTable> getAllTest()throws Exception;
	
	public List<Course> getAllCourses()throws Exception;
	
	public List<Course> getCourses(Credentials credentials)throws Exception;
	
	public List<Tutorials> getTutorials(Course course)throws Exception;
	
	public List<TestTable> getExams(Credentials credentials)throws Exception;
	
	public List<PracticeTest> PracticeExams(Credentials credentials)throws Exception;
	
	public List<Quiz> getPracticeQuiz(String testid)throws Exception;
	
	public List<Quiz> getQuizQuestions(String testid, String status)throws Exception;
	
	public List<StudentAnswers> getGivenAnswered(String testid, String StudentID) throws Exception;
	
	public boolean saveAnswer(StudentAnswers studentAnswers) throws Exception;
	
	public Quiz getQuestionById(int questionID) throws Exception;
	
	public TestTable getTestById(String testID) throws Exception;
	
	public List<Quiz> getRemainingQuestions(String testid, String StudentID, String status) throws Exception;
	
	public boolean saveStudentPerformance(StudentPerformance performance) throws Exception;
	
	public boolean saveTestTable(TestTable testTable) throws Exception;
	
	public List<StudentPerformance> getStudentPerformance(Course course,String studentID) throws Exception;
	
	public List<Faculty> getFaculty() throws Exception;
	
	public Faculty getFacultyById(String facultyid) throws Exception;
	
	public Student getStudent(String studentid) throws Exception;
	
	public Credentials getCredential(String loginid) throws Exception;
	
	public boolean registration(Credentials credentials) throws Exception;
	
	public boolean feedback(Feedback feedback) throws Exception;
	
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception;
	
	public Course getCourseById(String courseid) throws Exception;
	
	public boolean saveEnrollment(SubjectEnrolled enrolled) throws Exception;
	
	public SubjectTutor getEnrolledTutor(String courseid, String facultyid) throws Exception;
	
	public List<SubjectEnrolled> getSubjectEnrolled(Credentials credentials) throws Exception;
	
	public boolean removeEnrollment(SubjectEnrolled enrolled) throws Exception;
	
	public StudentPerformance getStudentPerformance(String userid, String testid) throws Exception;
	
	public List<SubjectTutor> getEnrolledSubjectTutor(Credentials credentials) throws Exception;
	
	public boolean saveSubjectTutor(SubjectTutor subjectTutor)throws Exception;
	
	public boolean deleteStudentAnswer(String userid)throws Exception;
	
}
