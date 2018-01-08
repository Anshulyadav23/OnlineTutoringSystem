package com.onlinetutoringsystem.dao;

import java.io.Serializable;
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

@Repository
public class OnlineTutoringSystemDAOImpl implements OnlineTutoringSystemDAO,Serializable {

	
	
	private SessionFactory sessionFactory;
	
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public List<Credentials> validateLogin(Credentials credential) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Credentials as c where c.loginId=:loginid and c.loginPassword=:password";
		Query query=session.createQuery(hql);
		query.setString("loginid", credential.getLoginId());
		query.setString("password", credential.getLoginPassword());
		@SuppressWarnings("unchecked")
		List<Credentials> data=query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<TestTable> getAllTest() throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from TestTable as T where T.status=:status";
		Query query=session.createQuery(hql);
		query.setString("status", "available");
		@SuppressWarnings("unchecked")
		List<TestTable> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<Course> getAllCourses() throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Course";
		Query query=session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Course> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<Course> getCourses(Credentials credentials) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Course as c  where c.courseid IN (select SubjectID from SubjectEnrolled as se where se.StudentID =:studentid)";
		Query query=session.createQuery(hql);
		query.setString("studentid", credentials.getLoginId());		
		@SuppressWarnings("unchecked")
		List<Course> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<Tutorials> getTutorials(Course course) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Tutorials as t  where t.courseid =:courseid";
		Query query=session.createQuery(hql);
		query.setString("courseid", course.getCourseid());		
		@SuppressWarnings("unchecked")
		List<Tutorials> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<TestTable> getExams(Credentials credentials) throws Exception {
		
		List<TestTable> data=new ArrayList<TestTable>();
		List<SubjectEnrolled> courses=getSubjectEnrolled(credentials);
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		for (SubjectEnrolled enrolled : courses) {
			String hql="from TestTable as T  where T.courseID =:courseid and T.facultyid =:facultyid and T.status=:status";
			Query query=session.createQuery(hql);
			query.setString("courseid", enrolled.getSubjectID());
			query.setString("facultyid", enrolled.getFacultyID());
			query.setString("status", "available");	
			
			@SuppressWarnings("unchecked")
			List<TestTable> test=query.list();
			
			for (TestTable testTable : test) {
			      data.add(testTable);
			}
		
		}
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<PracticeTest> PracticeExams(Credentials credentials) throws Exception {
		List<PracticeTest> data=new ArrayList<PracticeTest>();
		List<Course> courses=getCourses(credentials);
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		for (Course course : courses) {
			System.out.println(course.getCoursename());
			String hql="from PracticeTest as PT  where PT.courseID =:courseid";
			Query query=session.createQuery(hql);
			query.setString("courseid", course.getCourseid());	
			@SuppressWarnings("unchecked")
			List<PracticeTest> test=query.list();
			
			for (PracticeTest testTable : test) {
			      data.add(testTable);
			}
		
		}
		tx.commit();
		session.flush();
		return data;
	}
	

	@Override
	public List<Quiz> getQuizQuestions(String testid, String status) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.testid =:testid and Q.difficultylevel =:status";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		query.setString("status", status);
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public List<Quiz> getPracticeQuiz(String testid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.testid =:testid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);		
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}
	
	

	@Override
	public List<StudentAnswers> getGivenAnswered(String testid, String StudentID) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		
		String hql="from StudentAnswers as SA  where SA.testid =:testid and SA.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		query.setString("studentid", StudentID);
		@SuppressWarnings("unchecked")
		List<StudentAnswers> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public boolean saveAnswer(StudentAnswers studentAnswers) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(studentAnswers);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}
	
	@Override
	public boolean saveTestTable(TestTable testTable) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(testTable);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public Quiz getQuestionById(int questionID) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.ID =:questionid ";
		Query query=session.createQuery(hql);
		query.setInteger("questionid", questionID);
		tx.commit();
		session.flush();
		return (Quiz) query.list().iterator().next();
	}

	@Override
	public TestTable getTestById(String testID) throws Exception {
		List<TestTable> data=new ArrayList<TestTable>();
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from TestTable as T  where T.testid =:testid";
		Query query=session.createQuery(hql);		
		query.setString("testid", testID);
		tx.commit();
		session.flush();
		return  (TestTable) query.list().iterator().next();
	}

	@Override
	public List<Quiz> getRemainingQuestions(String testid, String StudentID, String status) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Quiz as Q  where Q.ID NOT IN (select questionID from StudentAnswers as SA where SA.studentid =:studentid and SA.testid =:testid) and Q.testid =:testid and Q.difficultylevel =:status";
		Query query=session.createQuery(hql);
		query.setString("studentid", StudentID);
		query.setString("testid", testid);
		query.setString("status", status);
		@SuppressWarnings("unchecked")
		List<Quiz> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public boolean saveStudentPerformance(StudentPerformance performance) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(performance);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(Course course,String studentID) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from StudentPerformance as SP  where SP.courseid =:courseid and SP.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("courseid", course.getCourseid());
		query.setString("studentid", studentID);
		tx.commit();
		session.flush();
		return query.list();
	}

	@Override
	public List<Faculty> getFaculty() throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Faculty";
		Query query=session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Faculty> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public Faculty getFacultyById(String facultyid) throws Exception {
		facultyid=facultyid+".edu";
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Faculty as F where F.facultyid =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("facultyid", facultyid);
		@SuppressWarnings("unchecked")
		List<Faculty> data= query.list();
		
		tx.commit();
		session.flush();
		return data.iterator().next();
	}

	@Override
	public Student getStudent(String studentid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Student as S where S.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("studentid", studentid);
		@SuppressWarnings("unchecked")
		List<Student> data= query.list();
		
		tx.commit();
		session.flush();
		return data.iterator().next();
	}

	@Override
	public Credentials getCredential(String loginid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Credentials as C where C.loginId =:loginId";
		Query query=session.createQuery(hql);
		query.setString("loginId", loginid);
		@SuppressWarnings("unchecked")
		List<Credentials> data= query.list();
		
		tx.commit();
		session.flush();
		if(!data.isEmpty())
			return data.iterator().next();
		
		return null;
	}

	@Override
	public boolean registration(Credentials credentials) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(credentials);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public boolean feedback(Feedback feedback) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(feedback);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectTutor as ST where ST.coursename NOT IN (select coursename from Course as C where C.courseid IN (select SubjectID from SubjectEnrolled as se where se.StudentID =:studentid))";
		Query query=session.createQuery(hql);
		query.setString("studentid", credentials.getLoginId());
		@SuppressWarnings("unchecked")
		List<SubjectTutor> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}
	
	@Override
	public List<SubjectTutor> getEnrolledSubjectTutor(Credentials credentials) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectTutor as ST where ST.coursename IN (select coursename from Course as C where C.courseid IN (select SubjectID from SubjectEnrolled as se where se.StudentID =:studentid))";
		Query query=session.createQuery(hql);
		query.setString("studentid", credentials.getLoginId());
		@SuppressWarnings("unchecked")
		List<SubjectTutor> data= query.list();
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public Course getCourseById(String courseid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from Course as c  where c.courseid =:courseid";
		Query query=session.createQuery(hql);
		query.setString("courseid", courseid);		
		@SuppressWarnings("unchecked")
		List<Course> data= query.list();
		tx.commit();
		session.flush();
		return data.iterator().next();
	}

	@Override
	public boolean saveEnrollment(SubjectEnrolled enrolled) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(enrolled);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public SubjectTutor getEnrolledTutor(String courseid, String facultyid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectTutor as ST where ST.courseid =:courseid and ST.facultyid =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("courseid", courseid);
		query.setString("facultyid", facultyid);
		@SuppressWarnings("unchecked")
		List<SubjectTutor> data= query.list();
		
		tx.commit();
		session.flush();
		return data.iterator().next();
	}

	@Override
	public List<SubjectEnrolled> getSubjectEnrolled(Credentials credentials) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from SubjectEnrolled as ST where ST.StudentID =:studentid";
		Query query=session.createQuery(hql);
		query.setString("studentid", credentials.getLoginId());
		@SuppressWarnings("unchecked")
		List<SubjectEnrolled> data= query.list();
		
		tx.commit();
		session.flush();
		return data;
	}

	@Override
	public boolean removeEnrollment(SubjectEnrolled enrolled) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="delete  SubjectEnrolled as ST where ST.StudentID =:studentid and ST.SubjectID =:subjectid and ST.FacultyID =:facultyid";
		Query query=session.createQuery(hql);
		query.setString("studentid", enrolled.getStudentID());
		query.setString("subjectid", enrolled.getSubjectID());
		query.setString("facultyid", enrolled.getFacultyID());
		query.executeUpdate();
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public StudentPerformance getStudentPerformance(String userid, String testid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="from StudentPerformance as SP  where SP.testid =:testid and SP.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("testid", testid);
		query.setString("studentid", userid);
		tx.commit();
		session.flush();
		return (StudentPerformance) query.list().iterator().next();
	}

	@Override
	public boolean saveSubjectTutor(SubjectTutor subjectTutor) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		System.out.println("Before insertion");
		session.saveOrUpdate(subjectTutor);
		System.out.println("After insertion");
		tx.commit();
		session.flush();
		return true;
	}

	@Override
	public boolean deleteStudentAnswer(String userid) throws Exception {
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		String hql="delete from StudentAnswers as SA  where SA.studentid =:studentid";
		Query query=session.createQuery(hql);
		query.setString("studentid", userid);
		tx.commit();
		session.flush();
		query.executeUpdate();
		return true;
	}

		

	
	
}
