package com.onlinetutoringsystem.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;

@Repository
public class AdminDAOImpl implements AdminDAO {

private SessionFactory sessionFactoryAdmin;
	
	@Autowired
	public void setSessionFactoryAdmin(SessionFactory sessionFactoryAdmin) {
		this.sessionFactoryAdmin = sessionFactoryAdmin;
	}

	@Override
	public List<Credentials> validateLogin(Credentials credential) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Credentials as c where c.loginId=:loginid and c.loginPassword=:password";
		Query query=session.createQuery(hql);
		query.setString("loginid", credential.getLoginId());
		query.setString("password", credential.getLoginPassword());
		@SuppressWarnings("unchecked")
		List<Credentials> data=query.list();
		tx.commit();
		session.flush();
		if(data.isEmpty())
			return null;
		
		return data;
	}

	@Override
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectTutor as ST where ST.facultyid =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", credentials.getLoginId());
		@SuppressWarnings("unchecked")
		List<SubjectTutor> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public Credentials getCredential(String loginid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Credentials as C where C.loginId =:loginId";
		Query query=session.createQuery(hql);
		query.setString("loginId", loginid);
		@SuppressWarnings("unchecked")
		List<Credentials> data= query.list();
		
		tx.commit();
		session.flush();
		if(data.isEmpty())
			new Credentials();
		
		return data.iterator().next();
	}

	@Override
	public boolean saveQuiz(TestTable table) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(table);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<TestTable> getTestTable(String facultyid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from TestTable as T  where T.facultyid =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", facultyid);
			
			@SuppressWarnings("unchecked")
			List<TestTable> test=query.list();
			
		tx.commit();
		session.flush();
		return test;
	}

	@Override
	public boolean savequestion(Quiz quiz) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(quiz);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public Course getCourseById(String courseid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Course as c  where c.courseid =:courseid or c.coursename =:coursename";
		Query query=session.createQuery(hql);
		query.setString("courseid", courseid);
		query.setString("coursename", courseid);
		@SuppressWarnings("unchecked")
		List<Course> data= query.list();
		tx.commit();
		session.flush();
		return data.iterator().next();
	}

	@Override
	public TestTable getTestTableById(String testid) throws Exception {
		//List<TestTable> data=new ArrayList<TestTable>();
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from TestTable as T  where T.testid =:testid or T.ID=:test";
		Query query=session.createQuery(hql);		
		query.setString("testid", testid);
		query.setString("test", testid);
		List<TestTable> list= query.list();
		tx.commit();
		session.flush();
		if(!list.isEmpty())
			return list.iterator().next();
		
		return null;
	}

	@Override
	public boolean deleteQuiz(TestTable table) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		String hql="delete from Quiz as Q  where Q.testid =:testid";
		Query query=session.createQuery(hql);
		query.setString("testid", table.getTestid());
		query.executeUpdate();
		session.delete(table);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(String testid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from StudentPerformance as SP  where SP.testid =:testid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		tx.commit();
		session.flush();
		return query.list();
	}

	@Override
	public boolean updateCredential(Credentials credentials) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(credentials);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public boolean updateFaculty(Faculty faculty) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(faculty);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public Faculty getFacultyData(String facultyid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Faculty as F  where F.facultyid =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", facultyid);
		List<Faculty> data=new ArrayList<>();
		data=query.list();
		tx.commit();
		session.flush();
		
		if(!data.isEmpty())
			return data.iterator().next();
		
		return null;
	}

	@Override
	public boolean saveTutorial(Tutorials tutorials) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(tutorials);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<Quiz> getQuizData(String testid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.testid =:testid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		//query.setString("status", status);
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}
	
	@Override
	public List<Quiz> getQuizData(String testid,String status) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.testid =:testid and Q.difficultylevel =:level";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		query.setString("level", status);
		//query.setString("status", status);
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}
	
	@Override
	public Quiz getQuizDataById(String questionid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.ID =:questionid";
		Query query=session.createQuery(hql);
		query.setString("questionid", questionid);
		//query.setString("status", status);
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		if(!data.isEmpty())
			return data.iterator().next();
		
		return null;
	}

	@Override
	public boolean deleteQuestion(Quiz quiz) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.delete(quiz);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<TestTable> getTestTable(String facultyid, String courseid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from TestTable as T  where T.facultyid =:facultyid and T.courseID =:courseid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", facultyid);
		query.setString("courseid", courseid);
		@SuppressWarnings("unchecked")
		List<TestTable> test=query.list();
			
		tx.commit();
		session.flush();
		return test;
	}

	@Override
	public List<SubjectEnrolled> getStudentEnrolled(String facultyid, String courseid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectEnrolled as SE  where SE.FacultyID =:facultyid and SE.SubjectID =:courseid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", facultyid);
		query.setString("courseid", courseid);
		@SuppressWarnings("unchecked")
		List<SubjectEnrolled> test=query.list();
			
		tx.commit();
		session.flush();
		return test;
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(String courseid, String studentid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from StudentPerformance as SP  where SP.courseid =:courseid and SP.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("courseid", courseid);
		query.setString("studentid", studentid);
		tx.commit();
		session.flush();
		return query.list();
	}

	@Override
	public StudentPerformance getStudentPerformanceData(String studentid, String testid) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from StudentPerformance as SP  where SP.testid =:testid and SP.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		query.setString("studentid", studentid);
		
		List<StudentPerformance> data=query.list();
		
		tx.commit();
		session.flush();
		
		if(data.isEmpty())
			return null;
		
		return data.iterator().next(); 
	}
	
	@Override
	public boolean savePerformance(StudentPerformance performance) throws Exception {
		Session session=sessionFactoryAdmin.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(performance);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	
	
}
