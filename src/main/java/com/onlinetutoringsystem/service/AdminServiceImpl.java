package com.onlinetutoringsystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.onlinetutoringsystem.dao.AdminDAO;
import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;

@Service
@Transactional
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	@Override
	public List<Credentials> validateLogin(Credentials credentials) throws Exception {
		return adminDAO.validateLogin(credentials);
	}

	@Override
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception {
		return adminDAO.getSubjectTutor(credentials);
	}

	@Override
	public Credentials getCredential(String loginid) throws Exception {
		return adminDAO.getCredential(loginid);
	}

	@Override
	public boolean saveQuiz(TestTable table) throws Exception {
		return adminDAO.saveQuiz(table);
	}

	@Override
	public List<TestTable> getTestTable(String facultyid) throws Exception {
		return adminDAO.getTestTable(facultyid);
	}

	@Override
	public boolean savequestion(Quiz quiz) throws Exception {
		return adminDAO.savequestion(quiz);
	}

	@Override
	public Course getCourseById(String courseid) throws Exception {
		return adminDAO.getCourseById(courseid);
	}

	@Override
	public TestTable getTestTableById(String testid) throws Exception {
		return adminDAO.getTestTableById(testid);
	}

	@Override
	public boolean deleteQuiz(TestTable table) throws Exception {
		return adminDAO.deleteQuiz(table);
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(String testid) throws Exception {
		return adminDAO.getStudentPerformance(testid);
	}

	@Override
	public boolean updateCredential(Credentials credentials) throws Exception {
		return adminDAO.updateCredential(credentials);
	}

	@Override
	public boolean updateFaculty(Faculty faculty) throws Exception {
		return adminDAO.updateFaculty(faculty);
	}

	@Override
	public Faculty getFacultyData(String facultyid) throws Exception {
		return adminDAO.getFacultyData(facultyid);
	}

	@Override
	public boolean saveTutorial(Tutorials tutorials) throws Exception {
		return adminDAO.saveTutorial(tutorials);
	}

	@Override
	public List<Quiz> getQuizData(String testid) throws Exception {
		return adminDAO.getQuizData(testid);
	}

	@Override
	public Quiz getQuizDataById(String questionid) throws Exception {
		return adminDAO.getQuizDataById(questionid);
	}

	@Override
	public boolean deleteQuestion(Quiz quiz) throws Exception {
		return adminDAO.deleteQuestion(quiz);
	}

	@Override
	public List<Quiz> getQuizData(String testid, String status) throws Exception {
		return adminDAO.getQuizData(testid, status);
	}

	@Override
	public List<TestTable> getTestTable(String facultyid, String courseid) throws Exception {
		return adminDAO.getTestTable(facultyid, courseid);
	}

	@Override
	public List<SubjectEnrolled> getStudentEnrolled(String facultyid, String courseid) throws Exception {
		return adminDAO.getStudentEnrolled(facultyid, courseid);
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(String courseid, String studentid) throws Exception {
		return adminDAO.getStudentPerformance(courseid, studentid);
	}

	@Override
	public StudentPerformance getStudentPerformanceData(String studentid, String testid) throws Exception {
		return adminDAO.getStudentPerformanceData(studentid, testid);
	}

	@Override
	public boolean savePerformance(StudentPerformance performance) throws Exception {
		return adminDAO.savePerformance(performance);
	}
	
}
