package com.onlinetutoringsystem.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.onlinetutoringsystem.dao.OnlineTutoringSystemDAO;
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


@Service
@Transactional
public class OnlineTutoringSystemServiceImpl implements OnlineTutortingSystemService {

	@Autowired
	private OnlineTutoringSystemDAO onlineTutoringSystemDAO;
	
	public void setOnlineTutoringSystemDAO(OnlineTutoringSystemDAO onlineTutoringSystemDAO) {
		this.onlineTutoringSystemDAO = onlineTutoringSystemDAO;
	}
	
	@Override
	public List<Credentials> validateLogin(Credentials credential) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.validateLogin(credential);
	}

	@Override
	public List<TestTable> getAllTest() throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getAllTest();
	}

	@Override
	public List<Course> getAllCourses() throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getAllCourses();
	}

	@Override
	public List<Course> getCourses(Credentials credentials) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getCourses(credentials);
	}

	@Override
	public List<Tutorials> getTutorials(Course course) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getTutorials(course);
	}

	@Override
	public List<TestTable> getExams(Credentials credentials) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getExams(credentials);
	}

	@Override
	public List<PracticeTest> PracticeExams(Credentials credentials) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.PracticeExams(credentials);
	}

	@Override
	public List<Quiz> getQuizQuestions(String testid, String studentID) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		String level[]={"Easy","Medium","Difficult","Very Difficult"};
		ArrayList<String> difficultylevel=new ArrayList<>();
		for (int i = 0; i < level.length; i++) {
			List<Quiz> checkdata=onlineTutoringSystemDAO.getRemainingQuestions(testid, studentID, level[i]);;
			if(!checkdata.isEmpty())
				difficultylevel.add(level[i]);
		}
				
				
		int index=0;
		String status="";
		List<Quiz> questions=new ArrayList<>();
		List<StudentAnswers> answersgiven=onlineTutoringSystemDAO.getGivenAnswered(testid, studentID);
		TestTable test=onlineTutoringSystemDAO.getTestById(testid);
		double correct=0, total=test.getTotalmarks(),currenttotal=0;
		//StudentAnswers answer=null;
		
		
		for (StudentAnswers studentAnswers : answersgiven) {
			Quiz quiz=onlineTutoringSystemDAO.getQuestionById(studentAnswers.getQuestionID());
			
		    if(studentAnswers.getStatus().equalsIgnoreCase("correct"))
				correct+=quiz.getMarks();
		    
		    currenttotal+=quiz.getMarks();
		}
		
		
		if(answersgiven.size()>=test.getNumberofquestions() || currenttotal >=total)
		{			
			if(currenttotal>total)
			{
				int difference=(int) (currenttotal-total);
				total-=difference;
				correct-=difference;
			}
			
			Quiz newQuiz=new Quiz();
			newQuiz.setQuestion("Exam Over");
			newQuiz.setTestid(testid);
			questions.add(newQuiz);
			System.out.println("Exam over");
			StudentPerformance performance=new StudentPerformance();
			performance.setCourseid(test.getCourseID());
			performance.setScore(correct);
			performance.setStudentid(studentID);
			performance.setTestid(testid);
			performance.setTotalscore(total);
			onlineTutoringSystemDAO.saveStudentPerformance(performance);
			return questions;
			
		}
		
	
		
		if(answersgiven.size()>=5)
			{
			
			     if(!answersgiven.isEmpty())
			     {
			    	 StudentAnswers studentAnswer=answersgiven.get(answersgiven.size()-1);
			    	Quiz quiz=onlineTutoringSystemDAO.getQuestionById(studentAnswer.getQuestionID()); 
			    	
			    	String quizlevel=quiz.getDifficultylevel();
			    	int getindex=difficultylevel.indexOf(quizlevel);
		    		status=quizlevel;
			    	if(getindex<0)
			    	{
			    		status=difficultylevel.iterator().next();
			    	}
			    	else
			    	{
			    		if(studentAnswer.getStatus().equalsIgnoreCase("correct"))
				    	{
			    			System.out.println("correct");
				    		if(getindex!=difficultylevel.size()-1)
				    			status=difficultylevel.get(getindex+1);
				    	}
				    	else
				    	{
				    		System.out.println("incorrect");
				    		if(getindex!=0)
				    			status=difficultylevel.get(getindex-1);
				    	}
			    	}
			    	
			    	
			     }
			     
			}
		else
		{
			status=difficultylevel.get(0);
		}
			
		//	status=difficultylevel[index];
			System.out.println(status);
		questions=onlineTutoringSystemDAO.getRemainingQuestions(testid, studentID, status);
		
		return questions;
	}

	@Override
	public List<Quiz> getPracticeQuiz(String testid) throws Exception {
		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		return onlineTutoringSystemDAO.getPracticeQuiz(testid);
	}

	@Override
	public List<Quiz> saveAnswer(Quiz quiz, String studentID) throws Exception {

		onlineTutoringSystemDAO=getOnlineTutoringSystemDAO();
		Quiz question=onlineTutoringSystemDAO.getQuestionById(quiz.getID());
		StudentAnswers studentAnswers=new StudentAnswers();
		studentAnswers.setStudentid(studentID);
		studentAnswers.setTestid(quiz.getTestid());
		studentAnswers.setQuestionID(quiz.getID());
		studentAnswers.setGivenanswer(quiz.getChoice());
		
		if(quiz.getChoice().trim().equalsIgnoreCase(question.getAnswer().trim()))
			studentAnswers.setStatus("correct");
		else
			studentAnswers.setStatus("incorrect");
		
		System.out.println(studentAnswers.toString());
		
		boolean check=onlineTutoringSystemDAO.saveAnswer(studentAnswers);
		
		return getQuizQuestions(quiz.getTestid(),studentID);
	}
	
	
	
	

	@Override
	public boolean saveStudentPerformance(String testid, String studentID) throws Exception {
		List<StudentAnswers> answersgiven=onlineTutoringSystemDAO.getGivenAnswered(testid, studentID);
		TestTable test=onlineTutoringSystemDAO.getTestById(testid);
		List<Quiz> list=onlineTutoringSystemDAO.getPracticeQuiz(testid);
		double correct=0, total=test.getTotalmarks();
		
		for (StudentAnswers studentAnswers : answersgiven) {
			Quiz quiz=onlineTutoringSystemDAO.getQuestionById(studentAnswers.getQuestionID());
			
		    if(studentAnswers.getStatus().equalsIgnoreCase("correct"))
				correct+=quiz.getMarks();
		    
		}
		
		
			StudentPerformance performance=new StudentPerformance();
			performance.setCourseid(test.getCourseID());
			performance.setScore(correct);
			performance.setStudentid(studentID);
			performance.setTestid(testid);
			performance.setTotalscore(total);
			return onlineTutoringSystemDAO.saveStudentPerformance(performance);
		
	}

	@Override
	public TestTable getTestTable(String testid) throws Exception {
		return onlineTutoringSystemDAO.getTestById(testid);
	}

	@Override
	public List<StudentPerformance> getStudentPerformance(Course course,String studentID) throws Exception {
		return onlineTutoringSystemDAO.getStudentPerformance(course,studentID);
	}

	@Override
	public List<Faculty> getFaculty() throws Exception {
		return onlineTutoringSystemDAO.getFaculty();
	}

	@Override
	public Faculty getFacultyById(String facultyid) throws Exception {
		return onlineTutoringSystemDAO.getFacultyById(facultyid);
	}

	@Override
	public Student getStudent(String studentid) throws Exception {
		return onlineTutoringSystemDAO.getStudent(studentid);
	}

	@Override
	public Credentials getCredential(String loginid) throws Exception {
		return onlineTutoringSystemDAO.getCredential(loginid);
	}

	@Override
	public boolean registration(Credentials credentials) throws Exception {
		return onlineTutoringSystemDAO.registration(credentials);
	}

	@Override
	public boolean feedback(Feedback feedback) throws Exception {
		return onlineTutoringSystemDAO.feedback(feedback);
	}

	@Override
	public List<SubjectTutor> getSubjectTutor(Credentials credentials) throws Exception {
		return onlineTutoringSystemDAO.getSubjectTutor(credentials);
	}

	@Override
	public Course getCourseById(String courseid) throws Exception {
		return onlineTutoringSystemDAO.getCourseById(courseid);
	}

	@Override
	public boolean saveEnrollment(SubjectEnrolled enrolled) throws Exception {
		return onlineTutoringSystemDAO.saveEnrollment(enrolled);
	}

	@Override
	public SubjectTutor getEnrolledTutor(String courseid, String facultyid) throws Exception {
		return onlineTutoringSystemDAO.getEnrolledTutor(courseid, facultyid);
	}

	@Override
	public List<SubjectEnrolled> getSubjectEnrolled(Credentials credentials) throws Exception {
		return onlineTutoringSystemDAO.getSubjectEnrolled(credentials);
	}

	@Override
	public boolean removeEnrollment(SubjectEnrolled enrolled) throws Exception {
		return onlineTutoringSystemDAO.removeEnrollment(enrolled);
	}

	@Override
	public StudentPerformance getStudentPerformance(String userid, String testid) throws Exception {
		return onlineTutoringSystemDAO.getStudentPerformance(userid, testid);
	}

	
	public String getDifficultyLevel(int marks)
	{
		String status="Easy";
		
		if(marks>=40 && marks<=60)
			status="Medium";
		 if(marks>=60 && marks<=80)
			status="Difficult";
	      if(marks>80)
			status="Very Difficult";
		
		
		return status;
	}
	
	public OnlineTutoringSystemDAO getOnlineTutoringSystemDAO()
	{
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("/WEB-INF/spring-servlet.xml");
		onlineTutoringSystemDAO=(OnlineTutoringSystemDAO) context.getBean("onlineTutoringSystemDAO");
		return onlineTutoringSystemDAO;
	}

	@Override
	public List<SubjectTutor> getEnrolledSubjectTutor(Credentials credentials) throws Exception {
		return onlineTutoringSystemDAO.getEnrolledSubjectTutor(credentials);
	}

	@Override
	public boolean saveSubjectTutor(SubjectTutor subjectTutor) throws Exception {
		return onlineTutoringSystemDAO.saveSubjectTutor(subjectTutor);
	}

	@Override
	public boolean deleteStudentAnswer(String userid) throws Exception {
		return onlineTutoringSystemDAO.deleteStudentAnswer(userid);
	}
	

}
