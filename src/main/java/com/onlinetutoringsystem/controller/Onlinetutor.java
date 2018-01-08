package com.onlinetutoringsystem.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.swing.CellEditor;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.Hours;
import org.joda.time.Minutes;
import org.joda.time.Seconds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Feedback;
import com.onlinetutoringsystem.model.PracticeTest;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.Student;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;
import com.onlinetutoringsystem.service.OnlineTutortingSystemService;

import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class Onlinetutor {

	public static final String ACCOUNT_SID = "AC94a9c88d0044b14bc242d2070bd77afd";
	 public static final String AUTH_TOKEN = "95d382b495297658694ac1a8cd3c601e";
	 
	
	static final long ONE_MINUTE_IN_MILLIS=60000;
	@Autowired
	private OnlineTutortingSystemService onlineTutoringSystemService;
	
	@RequestMapping(value = "/index")
	public ModelAndView welcome(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("index");
		model=menuData(model, userid);
		return model;		
	}
	
	
	@RequestMapping(value = {"/","/login"})
	public ModelAndView login(ModelAndView model) throws Exception
	{
		model.addObject("credentials",new Credentials());
		model.setViewName("login");
		
		return model;		
	}
	
	@RequestMapping(value = "/registration")
	public ModelAndView registration(HttpServletRequest request, @ModelAttribute Credentials credential,BindingResult result,ModelAndView model) throws Exception
	{
		onlineTutoringSystemService.registration(credential);
		if(credential.getLoginType().equalsIgnoreCase("faculty"))
		{
			String[] weekdays={"Mon","Tue","Wed","Thur","Fri","Sat"};
			
		       model.setViewName("Admin/index");
		       List<Course> data=onlineTutoringSystemService.getAllCourses();
		    
		       for (Course course : data) {
		    	 Random random=new Random();
				int index=random.nextInt(5);
				int start=random.nextInt(17-8)+8;
				
				SubjectTutor subjectTutor=new SubjectTutor();
				subjectTutor.setCourseid(course.getCourseid());
				subjectTutor.setCoursename(course.getCoursename());
				subjectTutor.setDay(weekdays[index]);
				subjectTutor.setFacultyid(credential.getLoginId());
				subjectTutor.setFacultyname(credential.getName());
				subjectTutor.setStarttime(start+":00");
				subjectTutor.setEndtime((start+1)+":00");
				onlineTutoringSystemService.saveSubjectTutor(subjectTutor);
			}
		       
		}
		else
		{
			model=menuData(model, credential.getLoginId());
			request.getSession().setAttribute("userid", credential.getLoginId());
			model.addObject("UserName", credential.getName());
			List<SubjectTutor> tutor=onlineTutoringSystemService.getSubjectTutor(credential);
			
			List<Course> coursedata=onlineTutoringSystemService.getCourses(credential);
			//request.getSession().setAttribute("userid", credential.getLoginId());
			
			List<SubjectEnrolled> alreadyenrolled=onlineTutoringSystemService.getSubjectEnrolled(credential);
			List<SubjectTutor> enrolleddata=new ArrayList<>();
			
			
			for (SubjectEnrolled subjectEnrolled : alreadyenrolled) {
				SubjectTutor subjecttutor=onlineTutoringSystemService.getEnrolledTutor(subjectEnrolled.getSubjectID(),subjectEnrolled.getFacultyID());
				enrolleddata.add(subjecttutor);
			}
			
			model.addObject("enrolledData", enrolleddata);
			
			if(coursedata.size()<3)
			{
				model.setViewName("Enrollment");
				model.addObject("enrollment", tutor);
				model.addObject("subjecttutor", new SubjectTutor());
				model.addObject("buttonstatus","disabled");
			}
			else
			{
				model=menuData(model, credential.getLoginId());
				
				model.setViewName("index");
			}
		}
		
		
		
		
		return model;		
	}
	
	@RequestMapping(value = "/thankyou")
	public ModelAndView thankYou(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Thankyou");
		model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/about-us")
	public ModelAndView aboutUs(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("about-us");
		model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/barchart")
	public ModelAndView barchart(ModelAndView model) throws Exception
	{
		model.setViewName("barchart");
		//model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/course")
	public ModelAndView course(@SessionAttribute("userid") String userid,@ModelAttribute Credentials credential,BindingResult result,ModelAndView model) throws Exception
	{
		model.setViewName("course");
		model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/performance")
	public ModelAndView performance(@SessionAttribute("userid") String userid,@ModelAttribute Credentials credential,BindingResult result,ModelAndView model) throws Exception
	{
		model.setViewName("Performance");
		model=menuData(model, userid);
		model.addObject("course", new Course());
		return model;		
	}

	
	@RequestMapping(value = "/practicequiz/{id}")
	public ModelAndView practicequiz(@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		model.setViewName("practicequiz");
		//model=menuData(model, userid);
		model.addObject("testid", testid);
		return model;		
	}
	
	@RequestMapping(value = "/contact-us")
	public ModelAndView contactUs(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("contact-us");
		model=menuData(model, userid);
		model.addObject("feedback", new Feedback());
		return model;		
	}
	
	@RequestMapping(value = "/instruction/{id}")
	public ModelAndView instruction(@SessionAttribute("userid") String userid,@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		model.setViewName("Instruction");
		model=menuData(model, userid);
		TestTable testTable=onlineTutoringSystemService.getTestTable(testid);
		Date examdate=format.parse(testTable.getTime());
		Date currentdate=format.parse(format.format(new Date()));
		Course course=new Course();
		course.setCourseid(testTable.getCourseID());
		
		List<StudentPerformance> performance=onlineTutoringSystemService.getStudentPerformance(course,userid);
		
		if(performance.isEmpty())
		{
			Calendar calender = Calendar.getInstance();
			calender.setTime(examdate);
			long t= calender.getTimeInMillis();
			Date endexmadate=new Date(t + (Integer.parseInt(testTable.getDuration()) * ONE_MINUTE_IN_MILLIS));
			
			System.out.println(currentdate+" "+examdate);
			
			if(currentdate.compareTo(examdate)*endexmadate.compareTo(currentdate)>=0){
				model.addObject("startexam","enabled");
			}
			else{
				model.addObject("startexam","disabled");
				model.addObject("message", "Exam will start at "+examdate+" and will be over at "+endexmadate);
			}
		}
		else{
			model.addObject("startexam","disabled");
			model.addObject("message", "Already have given the exam");
		}
			
		model.addObject("testid",testid);
		return model;		
	}

	@RequestMapping(value = "/Mainquiz/{id}")
	public ModelAndView mainquiz(@SessionAttribute("userid") String userid,@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		model.setViewName("MainQuiz");
		model=menuData(model, userid);
		List<Quiz> data=onlineTutoringSystemService.getQuizQuestions(testid, userid);
		TestTable testTable=onlineTutoringSystemService.getTestTable(testid);
		if(data.isEmpty())
			System.out.println("Field empty");
		Collections.shuffle(data);
		Quiz quiz=data.iterator().next();
		String array[]=quiz.getChoice().split("#");
		Date examdate=format.parse(testTable.getTime());
		Date currentdate=format.parse(format.format(new Date()));
		
		long diff = currentdate.getTime() - examdate.getTime();

		long diffMinutes = diff / (60 * 1000) % 60;
		
		TimerController.minutes=Integer.parseInt(testTable.getDuration())-diffMinutes;
		TimerController.seconds=59;	
		
		model.addObject("question", data.iterator().next());
		model.addObject("answerarray", array);
		model.addObject("testid",testid);
		return model;		
	}
	
	
	@RequestMapping(value = "/quizanswer")
	public ModelAndView quizanswer(@SessionAttribute("userid") String userid,@ModelAttribute Quiz questions,BindingResult result,ModelAndView model) throws Exception
	{
		model.setViewName("MainQuiz");
		List<Quiz> data=onlineTutoringSystemService.saveAnswer(questions, userid);
		if(data.isEmpty())
			model.setViewName("404");
		else
		{
			
			Collections.shuffle(data);
			Quiz quiz=data.iterator().next();
			if(quiz.getQuestion().equalsIgnoreCase("Exam over"))
			{
				model.setViewName("Thankyou");
				sendMessage(userid,quiz.getTestid());
			
			}
			else
			{
				String array[]=quiz.getChoice().split("#");
				
				model.addObject("question", data.iterator().next());
				model.addObject("answerarray", array);
				model.addObject("testid",quiz.getTestid());
				Thread.sleep(1000);
			}
			
		}
		return model;			
	}
	

	
	@RequestMapping(value = "/teacher-profile/{id}")
	public ModelAndView teacherprofile(@PathVariable("id") String facultyid ,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("teacher-profile");
		model=menuData(model, userid);
		System.out.println(facultyid);
		Faculty faculty=onlineTutoringSystemService.getFacultyById(facultyid);
		String []expertise=faculty.getExpertise().split("-");
		model.addObject("faculty", faculty);
		model.addObject("expertise", expertise);
		return model;		
	}

	@RequestMapping(value = "/our-teacher")
	public ModelAndView ourTeacher(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("our-teacher");
		model=menuData(model, userid);
		List<Faculty> faculty=onlineTutoringSystemService.getFaculty();
		model.addObject("faculty", faculty);
		return model;		
	}
	
	@RequestMapping(value = "/event")
	public ModelAndView event(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("event");
		model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/My-profile")
	public ModelAndView myprofile(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("MyProfile");
		String usercourses="";
		model=menuData(model, userid);
		Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		List<SubjectEnrolled> data=onlineTutoringSystemService.getSubjectEnrolled(credentials);
		HashMap<String, Double> totalcourse=new HashMap<>();
		
		for (SubjectEnrolled enrolled : data) {
			double total=0,score=0;
			boolean check=false;
			Course course=onlineTutoringSystemService.getCourseById(enrolled.getSubjectID());
			List<StudentPerformance> performance=onlineTutoringSystemService.getStudentPerformance(course,userid);
			//System.out.println(course.getCourseid()+" "+userid);
			for (StudentPerformance studentPerformance : performance) {
				total+=studentPerformance.getTotalscore();
				score+=studentPerformance.getScore();
				System.out.println(studentPerformance.toString());
				check=true;
			}
			
			System.out.println(total+" "+score);
			if(check)
				totalcourse.put(course.getCoursename(), (score/total)*100);
			else
				totalcourse.put(course.getCoursename(), 0.0);
			
			usercourses+=course.getCoursename()+"\n";
			
		}
		
		model.addObject("usercourses", usercourses);
		model.addObject("totalcourse", totalcourse);
		model.addObject("credentials", credentials);
		return model;		
	}
	
	@RequestMapping(value = "/course/{id}")
	public ModelAndView coursetutorial(@PathVariable("id") String courseid ,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("course");
		model=menuData(model, userid);
		return model;		
	}
	
	@RequestMapping(value = "/error")
	public ModelAndView error(ModelAndView model) throws Exception
	{
		model.setViewName("404");
		return model;		
	}
	
	@RequestMapping(value = "/Enrollment")
	public ModelAndView Enrollment(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Enrollment");
		Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		List<SubjectTutor> tutor=onlineTutoringSystemService.getSubjectTutor(credentials);
		model.addObject("enrollment", tutor);
		model.addObject("subjecttutor", new SubjectTutor());
		return model;		
	}
	
	@RequestMapping(value = "/saveEnrollment/{facultyid}/{id}")
	public ModelAndView saveEnrollment(@PathVariable("id") String courseid,@PathVariable("facultyid") String facultyid,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		SimpleDateFormat parser = new SimpleDateFormat("EEE,HH:mm");
		model.setViewName("Enrollment");
		SubjectEnrolled enrolled=new SubjectEnrolled();
		enrolled.setStudentID(userid);
		enrolled.setSubjectID(courseid);
		enrolled.setFacultyID(facultyid);
		
		onlineTutoringSystemService.saveEnrollment(enrolled);
	//	SubjectTutor currenttutor=onlineTutoringSystemService.getEnrolledTutor(courseid, facultyid);
		Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		List<SubjectTutor> tutor=new ArrayList<>();
		List<SubjectTutor> enrolledtutor=onlineTutoringSystemService.getEnrolledSubjectTutor(credentials);
		List<SubjectTutor> data=onlineTutoringSystemService.getSubjectTutor(credentials);
		//tutor=data;
		for (SubjectTutor subjectTutor : enrolledtutor) {
			for(Iterator<SubjectTutor> iterator=data.iterator(); iterator.hasNext();)
			{
				SubjectTutor subjectTutor2=iterator.next();
				String day=subjectTutor2.getDay();
				String starttime=subjectTutor2.getStarttime();
				String endtime=subjectTutor2.getEndtime();
				Date start=parser.parse(day+","+starttime);
				Date end=parser.parse(day+","+endtime);
				System.out.println(start.toString()+"   "+parser.parse(subjectTutor.getDay()+","+subjectTutor.getStarttime()));
				System.out.println(end.toString()+"  "+parser.parse(subjectTutor.getDay()+","+subjectTutor.getEndtime()));
				System.out.println(start.compareTo(parser.parse(subjectTutor.getDay()+","+subjectTutor.getEndtime())) +"  "+end.compareTo(parser.parse(subjectTutor.getDay()+","+subjectTutor.getStarttime())));
				if(start.compareTo(parser.parse(subjectTutor.getDay()+","+subjectTutor.getEndtime())) < 0 && end.compareTo(parser.parse(subjectTutor.getDay()+","+subjectTutor.getStarttime())) > 0)
					iterator.remove();
			}
			
			//data=onlineTutoringSystemService.getSubjectTutor(credentials);
		}
		
		List<Course> coursedata=onlineTutoringSystemService.getCourses(credentials);
		List<SubjectEnrolled> alreadyenrolled=onlineTutoringSystemService.getSubjectEnrolled(credentials);
		List<SubjectTutor> enrolleddata=new ArrayList<>();
		
		
		
		for (SubjectEnrolled subjectEnrolled : alreadyenrolled) {
			SubjectTutor subjecttutor=onlineTutoringSystemService.getEnrolledTutor(subjectEnrolled.getSubjectID(),subjectEnrolled.getFacultyID());
			enrolleddata.add(subjecttutor);
		}
		
		model.addObject("enrolledData", enrolleddata);
		
		if(coursedata.size()<3)
		{
			model.addObject("enrollment", data);
			model.addObject("subjecttutor", new SubjectTutor());
			model.addObject("buttonstatus","disabled");
		}
		
		return model;		
	}
	
	
	@RequestMapping(value = "/removeEnrollment/{facultyid}/{id}")
	public ModelAndView removeEnrollment(@PathVariable("id") String courseid,@PathVariable("facultyid") String facultyid,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Enrollment");
		SubjectEnrolled enrolled=new SubjectEnrolled();
		enrolled.setStudentID(userid);
		enrolled.setSubjectID(courseid);
		enrolled.setFacultyID(facultyid);
		
		onlineTutoringSystemService.removeEnrollment(enrolled);
		
		Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		List<SubjectTutor> tutor=onlineTutoringSystemService.getSubjectTutor(credentials);
		List<Course> coursedata=onlineTutoringSystemService.getCourses(credentials);
		List<SubjectEnrolled> alreadyenrolled=onlineTutoringSystemService.getSubjectEnrolled(credentials);
		List<SubjectTutor> enrolleddata=new ArrayList<>();
		
		
		for (SubjectEnrolled subjectEnrolled : alreadyenrolled) {
			SubjectTutor subjecttutor=onlineTutoringSystemService.getEnrolledTutor(subjectEnrolled.getSubjectID(),subjectEnrolled.getFacultyID());
			enrolleddata.add(subjecttutor);
		}
		
		model.addObject("enrolledData", enrolleddata);
		model.addObject("enrollment", tutor);
		model.addObject("subjecttutor", new SubjectTutor());
		return model;		
	}
	
	
	@RequestMapping(value = "/tutorial/{id}")
	public ModelAndView tutorial(@PathVariable("id") String courseid ,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("tutorial");
		model=menuData(model, userid);
		Course course=new Course();
		course.setCourseid(courseid);
		List<Tutorials> tutorials=onlineTutoringSystemService.getTutorials(course);
		model.addObject("tutorials", tutorials);
		return model;		
	}
	
	@RequestMapping(value = "/logincheck")
	public ModelAndView loginCheck(HttpServletRequest request , @ModelAttribute Credentials credentials,BindingResult result,ModelAndView model) throws Exception
	{
		List<Credentials> data=onlineTutoringSystemService.validateLogin(credentials);
		credentials=onlineTutoringSystemService.getCredential(credentials.getLoginId());
		if(data.isEmpty() || !credentials.getLoginType().equalsIgnoreCase("student"))
		{
			model.addObject("errormessage", "invalid login id and password");
			model.setViewName("login");
		}
		else
		{
			List<SubjectTutor> tutor=onlineTutoringSystemService.getSubjectTutor(credentials);
			
			List<Course> coursedata=onlineTutoringSystemService.getCourses(credentials);
			request.getSession().setAttribute("userid", credentials.getLoginId());
			
			List<SubjectEnrolled> alreadyenrolled=onlineTutoringSystemService.getSubjectEnrolled(credentials);
			List<SubjectTutor> enrolleddata=new ArrayList<>();
			
			
			for (SubjectEnrolled subjectEnrolled : alreadyenrolled) {
				SubjectTutor subjecttutor=onlineTutoringSystemService.getEnrolledTutor(subjectEnrolled.getSubjectID(),subjectEnrolled.getFacultyID());
				enrolleddata.add(subjecttutor);
			}
			
			model.addObject("enrolledData", enrolleddata);
			
			if(coursedata.size()<3)
			{
				model.setViewName("Enrollment");
				model.addObject("enrollment", tutor);
				model.addObject("subjecttutor", new SubjectTutor());
				model.addObject("buttonstatus","disabled");
			}
			else
			{
				model=menuData(model, credentials.getLoginId());
				
				model.setViewName("index");
			}
			
		}
		
		return model;		
	}
	
	
	@RequestMapping(value = "/saveperformance/{id}")
	public ModelAndView savePerformance(@PathVariable("id") String testid ,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Thankyou");
		model=menuData(model, userid);
		onlineTutoringSystemService.saveStudentPerformance(testid, userid);
		return model;		
	}
	
	@RequestMapping(value = "/getbarchart")
	public ModelAndView getBarChart(@SessionAttribute("userid") String userid,@ModelAttribute Course course,BindingResult result,ModelAndView model) throws Exception
	{
		model.setViewName("Performance");
		model=menuData(model, userid);
		List<StudentPerformance> performance=onlineTutoringSystemService.getStudentPerformance(course,userid);
		model.addObject("performance", performance);
		return model;		
	}
	
	@RequestMapping(value = "/sendfeedback")
	public ModelAndView sendfeedback(@SessionAttribute("userid") String userid,@ModelAttribute Feedback feedback,BindingResult result,ModelAndView model) throws Exception
	{
		model.setViewName("index");
		model=menuData(model, userid);
		onlineTutoringSystemService.feedback(feedback);
		return model;	
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request,@SessionAttribute("userid") String userid,@ModelAttribute Feedback feedback,BindingResult result,ModelAndView model) throws Exception
	{
		request.getSession().invalidate();
		model.addObject("credentials",new Credentials());
		model.setViewName("login");
		return model;		
	}
	
	@RequestMapping(value = "/quitExam")
	public ModelAndView quitExam(HttpServletRequest request,@SessionAttribute("userid") String userid,@ModelAttribute Feedback feedback,BindingResult result,ModelAndView model) throws Exception
	{
		model=menuData(model, userid);
		model.setViewName("index");
		onlineTutoringSystemService.deleteStudentAnswer(userid);
		
		return model;		
	}
	
	public ModelAndView menuData(ModelAndView model, String userid) throws Exception
	{
		Credentials credential=onlineTutoringSystemService.getCredential(userid);;
		List<TestTable> testdata=onlineTutoringSystemService.getAllTest();
		model.addObject("testdata", testdata);
		List<Course> coursedata=onlineTutoringSystemService.getAllCourses();
		model.addObject("coursedata", coursedata);
		List<Course> enrolldata=onlineTutoringSystemService.getCourses(credential);
		model.addObject("enrolldata", enrolldata);
		List<TestTable> examdata=onlineTutoringSystemService.getExams(credential);
		model.addObject("examdata", examdata);
		List<PracticeTest> practicetest=onlineTutoringSystemService.PracticeExams(credential);
		model.addObject("practicetest", practicetest);
		
		 
		model.addObject("StudentName", credential.getName());
		model.addObject("StudentId", credential.getLoginId());
		
		return model;
	}
	
	
	public void sendMessage(String userid,String testid) throws Exception
	{
		Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		StudentPerformance performance=onlineTutoringSystemService.getStudentPerformance(userid, testid);
		
		 Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		 
		 String text="Thank you for participating int Exam "+performance.getTestid()+". You have scored "+performance.getScore()+" out off "+performance.getTotalscore();
		 
		 
		 Message message = Message.creator(new PhoneNumber("+1"+credentials.getContactnumber()), new PhoneNumber("+16607974820"),text).create();
		 
		 System.out.println(message.getSid());
	}
	
}
