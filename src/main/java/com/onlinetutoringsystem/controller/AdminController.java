package com.onlinetutoringsystem.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.onlinetutoringsystem.model.Course;
import com.onlinetutoringsystem.model.Credentials;
import com.onlinetutoringsystem.model.Faculty;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.model.StudentPerformance;
import com.onlinetutoringsystem.model.SubjectEnrolled;
import com.onlinetutoringsystem.model.SubjectTutor;
import com.onlinetutoringsystem.model.TestTable;
import com.onlinetutoringsystem.model.Tutorials;
import com.onlinetutoringsystem.service.AdminService;
import com.sun.org.glassfish.gmbal.AMXMetadata;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

import sun.security.krb5.internal.ccache.CredentialsCache;

@Controller
@RequestMapping(value="/Admin")
public class AdminController {

	public static final String ACCOUNT_SID = "AC94a9c88d0044b14bc242d2070bd77afd";
	 public static final String AUTH_TOKEN = "95d382b495297658694ac1a8cd3c601e";
	 
	
	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping(value = "/login")
	public ModelAndView welcome(ModelAndView model) throws Exception
	{
		model.setViewName("Admin/login");
		model.addObject("credential", new Credentials());
		return model;		
	}
	
	@RequestMapping(value = "/index")
	public ModelAndView Index(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/index");
		Credentials credentials=adminService.getCredential(userid);
		model.addObject("Username", credentials.getName());
		return model;		
	}
	
	@RequestMapping(value = "/personal")
	public ModelAndView personalInformation(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/personalinformation");
		Credentials credentials=adminService.getCredential(userid);
		Faculty faculty=adminService.getFacultyData(userid);
		model.addObject("credential", credentials);
		model.addObject("faculty", faculty);
		return model;		
	}
	
	@RequestMapping(value = "/updatepersonal")
	public ModelAndView updatePersonalInformation(HttpServletRequest request,@RequestParam("file") MultipartFile file ,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/personalinformation");
		Credentials credentials=adminService.getCredential(userid);
		Faculty faculty=adminService.getFacultyData(userid);
		credentials.setName(request.getParameter("fullname"));
		credentials.setAddress(request.getParameter("address"));
		credentials.setCity(request.getParameter("city"));
		credentials.setContactnumber(request.getParameter("contactnumber"));
		credentials.setZipcode(request.getParameter("zipcode"));
		credentials.setCountry(request.getParameter("country"));
		
		if(faculty==null)
			faculty=new Faculty();
		
		faculty.setFacultyid(userid);
		faculty.setFacultyname(request.getParameter("fullname"));
		faculty.setDesignation(request.getParameter("designation"));
		faculty.setDescription(request.getParameter("description"));
		faculty.setExpertise(request.getParameter("expertise"));
		faculty.setContactnumber(request.getParameter("contactnumber"));
		
		System.out.println(request.getServletContext().getRealPath("/resources"));
		
		if(!file.isEmpty())
		{
			byte[] bytes = file.getBytes();

			// Creating the directory to store file
			String rootPath = "C:/Users/Muskan Yadav/workspace/OnlineTutoringSystem/src/main/webapp/resources/images/faculty";
			File dir = new File(rootPath);
			if (!dir.exists())
				dir.mkdirs();

			// Create the file on server
			File serverFile = new File(dir.getAbsolutePath()
					+ File.separator + credentials.getName().substring(credentials.getName().lastIndexOf(" ")).trim()+".jpg" );
			BufferedOutputStream stream = new BufferedOutputStream(
					new FileOutputStream(serverFile));
			stream.write(bytes);
			stream.close();
			
			faculty.setImage(credentials.getName().substring(credentials.getName().lastIndexOf(" ")).trim()+".jpg");
			
			System.out.println("You successfully uploaded file=" + serverFile.getAbsolutePath());
			
		}
		
		adminService.updateCredential(credentials);
		adminService.updateFaculty(faculty);
		model.addObject("credential", credentials);
		model.addObject("faculty", faculty);
		model.addObject("message", "Your data has been updated");
		return model;		
	}
	
	@RequestMapping(value = "/createquestions")
	public ModelAndView createquestions(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/createquestions");
		List<TestTable> testTables=adminService.getTestTable(userid);
		model.addObject("testtable", testTables);
		model.addObject("quiz",new Quiz());
		model.addObject("choices",new String[4]);
		return model;		
	}
	
	@RequestMapping(value = "/createquiz")
	public ModelAndView createquiz(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/createquiz");
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		model.addObject("testtable", new TestTable());
		return model;		
	}
	
	@RequestMapping(value = "/updatequiz/{id}")
	public ModelAndView createquiz(@PathVariable("id") String id,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/createquiz");
		TestTable testTable=adminService.getTestTableById(id);
		//Course course=adminService.getCourseById(testTable.getCourseID());
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		//model.addObject("course", course);
		model.addObject("testtable", testTable);
		return model;		
	}
	
	@RequestMapping(value = "/examweightage")
	public ModelAndView assignWeightAge(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/examweightage");
		model.addObject("testtable", adminService.getTestTable(userid));
		return model;		
	}
	
	@RequestMapping(value = "/finalevaluation")
	public ModelAndView finalEvaluation(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/finalevaluation");
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		return model;		
	}
	
	
	@RequestMapping(value = "/calculatefinalgardes",method=RequestMethod.POST,params="calculate")
	public ModelAndView calculateFinalGardes(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/finalevaluation");
		String courseid=request.getParameter("courseid");
		List<SubjectEnrolled> enrolleds=adminService.getStudentEnrolled(userid, courseid);
		List<TestTable> testdata=adminService.getTestTable(userid, courseid);
		Course course=adminService.getCourseById(courseid);
		for (SubjectEnrolled subjectEnrolled : enrolleds) {
			double score=0,total=0;
			List<StudentPerformance> performance=adminService.getStudentPerformance(courseid,subjectEnrolled.getStudentID());
			if(performance.size()==testdata.size())
			{
				 for (StudentPerformance studentPerformance : performance) {
					 TestTable test=adminService.getTestTableById(studentPerformance.getTestid());
						total+=studentPerformance.getTotalscore()*(test.getExamweightage()/100);
						score+=studentPerformance.getScore()*(test.getExamweightage()/100);
					}
				 
				 int percentage=(int) ((score/total)*100);
				 
				 String message="Thank you for you participation in course "+course.getCoursename()+" your final grades for this course is ";
				 if(percentage>90)
				      message+="A "+percentage; 
				 else if(percentage<90 && percentage>80)
				      message+="B "+percentage;
				 else if(percentage<80 && percentage>70)
					 message+="C "+percentage;
				 else if(percentage<70 && percentage>60)
					 message+="D "+percentage;
				 else 
					 message+="F "+percentage;
				 
				 sendMessage(message,adminService.getCredential(subjectEnrolled.getStudentID()));
			}
			else
			{
				
			}
		}
		
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		model.addObject("message", "Grades has been calculated and messages has been send to all student");
		return model;		
	}
	

	@RequestMapping(value = "/calculatefinalgardes",method=RequestMethod.POST,params="checkcalculate")
	public ModelAndView checkgrades(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/finalevaluation");
		String courseid=request.getParameter("courseid");
		
		List<TestTable> testdata=adminService.getTestTable(userid, courseid);
		
		for (TestTable testTable : testdata) {
			List<SubjectEnrolled> enrolleds=adminService.getStudentEnrolled(userid, courseid);
			
			for (SubjectEnrolled subjectEnrolled : enrolleds) {
				StudentPerformance performance=adminService.getStudentPerformanceData(subjectEnrolled.getStudentID(), testTable.getTestid());
				
				if(performance==null)
				{
					performance=new StudentPerformance();
					performance.setCourseid(subjectEnrolled.getSubjectID());
					performance.setScore(0);
					performance.setStudentid(subjectEnrolled.getStudentID());
					performance.setTestid(testTable.getTestid());
					performance.setTotalscore(testTable.getTotalmarks());
					adminService.savePerformance(performance);
				}
				
			}
			
		}
		
		
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		model.addObject("message", "You can now calculate final grades");
		return model;		
	}
	
	@RequestMapping(value = "/EnterExamWeightage")
	public ModelAndView enterExamWeightage(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/examweightage");
		double weigthage=Double.parseDouble(request.getParameter("weightage"));
		String testid=request.getParameter("quizid");
		TestTable testTable=adminService.getTestTableById(testid);
		testTable.setExamweightage(weigthage);
		adminService.saveQuiz(testTable);
		model.addObject("testtable", adminService.getTestTable(userid));
		return model;		
	}
	
	@RequestMapping(value = "/createnewquiz")
	public ModelAndView createNewQuiz(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/ExamTable");
		String id=request.getParameter("id");
		//System.out.println(id+"dat");
		TestTable testtable=adminService.getTestTableById(id);
		
		if(testtable==null)
		{
			testtable=new TestTable();
			model.addObject("message", "Quiz is been created successfully");
		}
		else
			model.addObject("message", "Quiz is been updated successfully");
		testtable.setCourseID(request.getParameter("courseid"));
		testtable.setTestid(request.getParameter("quizid"));
		testtable.setTime(request.getParameter("time"));
		testtable.setDuration(request.getParameter("duration"));
		testtable.setNumberofquestions(Integer.parseInt(request.getParameter("numberofquestions")));
		testtable.setDescription(request.getParameter("description"));
		testtable.setTotalmarks(Double.parseDouble(request.getParameter("totalmarks")));
		testtable.setStatus("unavailable");
		testtable.setFacultyid(userid);
		adminService.saveQuiz(testtable);
		System.out.println(testtable.toString());
		
		return model;		
	}
	
	@RequestMapping(value = "/quizquestion")
	public ModelAndView quizquestion(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		String id=request.getParameter("id");
		Quiz quiz=adminService.getQuizDataById(id);
		model.setViewName("Admin/ExamQuestions");
		
		if(quiz==null)
		{
			quiz=new Quiz();
			model.addObject("message", "Question is been created successfully");
		}
		else
			model.addObject("message", "Question is been updated successfully");
		quiz.setTestid(request.getParameter("quizid"));
		quiz.setQuestion(request.getParameter("question"));
		quiz.setAnswer(request.getParameter("correct"));
		quiz.setQuestiontype("choice");
		quiz.setDifficultylevel(request.getParameter("difficulty"));
		quiz.setMarks(Double.parseDouble(request.getParameter("mark")));
		String choices=request.getParameter("option1")+"#"+request.getParameter("option2")+"#"+request.getParameter("option3")+"#"+request.getParameter("option4");
		quiz.setChoice(choices);
		adminService.savequestion(quiz);
		
		List<TestTable> testTables=adminService.getTestTable(userid);
		model.addObject("testtable", testTables);
		model.addObject("quiz",new Quiz());
		model.addObject("choices",new String[4]);
		
		
		return model;		
	}
	
	
	@RequestMapping(value = "/Examtable")
	public ModelAndView Examtable(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/ExamTable");
		model.addObject("credential", new Credentials());
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		
		return model;		
	}
	
	@RequestMapping(value = "/examtabledata/{id}",params="deleteexam",method=RequestMethod.POST)
	public ModelAndView deleteExam(HttpServletRequest request,@SessionAttribute("userid") String userid,@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		TestTable table=adminService.getTestTableById(testid);
		table.setStatus("available");
		adminService.deleteQuiz(table);
		model.setViewName("Admin/ExamTable");
		model.addObject("credential", new Credentials());
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		 model.addObject("message", "Quiz is been deleted");
		return model;	
		
	}
	
	@RequestMapping(value = "/examtabledata/{id}",params="enableexam",method=RequestMethod.POST)
	public ModelAndView enableExam(HttpServletRequest request,@SessionAttribute("userid") String userid,@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		TestTable table=adminService.getTestTableById(testid);
		table.setStatus("available");
		adminService.saveQuiz(table);
		model.setViewName("Admin/ExamTable");
		model.addObject("credential", new Credentials());
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		 model.addObject("message", "Quiz is been enabled successfully");
		return model;		
		
	}
	
	@RequestMapping(value = "/examtabledata/{id}",params="disableexam",method=RequestMethod.POST)
	public ModelAndView disableExam(HttpServletRequest request,@SessionAttribute("userid") String userid,@PathVariable("id") String testid,ModelAndView model) throws Exception
	{
		TestTable table=adminService.getTestTableById(testid);
		table.setStatus("unavailable");
		adminService.saveQuiz(table);
		model.setViewName("Admin/ExamTable");
		model.addObject("credential", new Credentials());
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		 model.addObject("message", "Quiz is been disabled successfully");
		return model;	
	
	}
	
	@RequestMapping(value = "/studentdatatable")
	public ModelAndView studentdatatable(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/studentdatatable");
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		
		return model;		
	}
	
	@RequestMapping(value = "/getstudentdatatable")
	public ModelAndView getStudentDataTable(@SessionAttribute("userid") String userid,HttpServletRequest request , ModelAndView model) throws Exception
	{
		String testid=request.getParameter("testid");
		System.out.println(testid);
		List<StudentPerformance> studentPerformances=adminService.getStudentPerformance(testid);
		List<StudentPerformance> data=new ArrayList<>();
		
		for (StudentPerformance studentPerformance : studentPerformances) {
			Course course =adminService.getCourseById(studentPerformance.getCourseid());
			studentPerformance.setCourseid(course.getCoursename());
			data.add(studentPerformance);
		}
		
		model.setViewName("Admin/studentdatatable");
		List<TestTable> testtable=adminService.getTestTable(userid);
		 model.addObject("studentPerformances", data);
		 model.addObject("testtable", testtable);
		
		return model;		
	}
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpServletRequest request ,ModelAndView model) throws Exception
	{
		request.getSession().invalidate();
		model.addObject("credentials",new Credentials());
		model.setViewName("Admin/login");
		return model;				
	}
	
	@RequestMapping(value = "/logincheck")
	public ModelAndView logincheck(HttpServletRequest request ,ModelAndView model) throws Exception
	{
		String userid=request.getParameter("email");
		String password=request.getParameter("password");
		Credentials credential=adminService.getCredential(userid);
		credential.setLoginId(userid);
		credential.setLoginPassword(password);
		List<Credentials> data=adminService.validateLogin(credential);
		if(data.isEmpty())
		{
			model.addObject("errormessage", "invalid login id and password");
			model.setViewName("Admin/login");
		}
		else
		{
			request.getSession().setAttribute("userid", credential.getLoginId());
			model.addObject("UserName", credential.getName());
			model.setViewName("Admin/index");			
		}
		
		return model;	
	}
	
	@RequestMapping(value = "/Createtutorials")
	public ModelAndView createTutorials(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/Createtutorials");
		Credentials credentials=adminService.getCredential(userid);
		List<SubjectTutor> tutor=adminService.getSubjectTutor(credentials);
		model.addObject("tutor", tutor);
		model.addObject("testtable", new TestTable());
		return model;		
	}
	
	@RequestMapping(value = "/Entertutorials")
	public ModelAndView enterTutorials(HttpServletRequest request,@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/index");
		Tutorials  tutorials=new Tutorials();
		tutorials.setCourseid(request.getParameter("courseid"));
		tutorials.setHeading(request.getParameter("name"));
		tutorials.setLink(request.getParameter("videourl"));
		tutorials.setTutorialstype("Video");
		adminService.saveTutorial(tutorials);
		model.addObject("message", "Tutorial is been created successfully");
		return model;			
	}
	
	
	@RequestMapping(value = "/ExamQuestions")
	public ModelAndView examQuestions(@SessionAttribute("userid") String userid,ModelAndView model) throws Exception
	{
		model.setViewName("Admin/ExamQuestions");
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		
		return model;		
	}
	
	@RequestMapping(value = "/getExamQuestionTable")
	public ModelAndView getExamQuestionTable(@SessionAttribute("userid") String userid,HttpServletRequest request , ModelAndView model) throws Exception
	{
		String testid=request.getParameter("testid");
		System.out.println(testid);
		List<Quiz> quizs=new ArrayList<>();
		String level[]={"Easy","Medium","Difficult","Very Difficult"};
		for (int i = 0; i < level.length; i++) {
			List<Quiz> checkdata=adminService.getQuizData(testid, level[i]);;
			for (Quiz quiz : checkdata) {
				quizs.add(quiz);
			}
		}
		
		model.setViewName("Admin/ExamQuestions");
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		 model.addObject("quizs", quizs);
		 model.addObject("testtable", testtable);
		
		return model;		
	}
	
	@RequestMapping(value = "/updateQuestion/{id}")
	public ModelAndView updateQuestion(@PathVariable("id") String questionid,@SessionAttribute("userid") String userid,HttpServletRequest request , ModelAndView model) throws Exception
	{
		Quiz quiz=adminService.getQuizDataById(questionid);
		model.setViewName("Admin/createquestions");
		
		String choices[]=quiz.getChoice().split("#");
		List<TestTable> testTables=adminService.getTestTable(userid);
		model.addObject("testtable", testTables);
		model.addObject("quiz",quiz);
		model.addObject("choices",choices);
		
		return model;		
	}
	
	@RequestMapping(value = "/deleteQuestion/{id}")
	public ModelAndView deleteQuestion(@PathVariable("id") String questionid,@SessionAttribute("userid") String userid,HttpServletRequest request , ModelAndView model) throws Exception
	{
		Quiz quiz=adminService.getQuizDataById(questionid);
		adminService.deleteQuestion(quiz);
		model.setViewName("Admin/ExamQuestions");
		List<TestTable> testtabledata=new ArrayList<>();
		List<TestTable> testtable=adminService.getTestTable(userid);
		 for (TestTable testTable2 : testtable) {
			Course course=adminService.getCourseById(testTable2.getCourseID());
			testTable2.setDescription(course.getCoursename());
			testtabledata.add(testTable2);
		}
		 
		 model.addObject("testtable", testtabledata);
		
		return model;		
	}
	
	
	
	public void sendMessage(String textmessage,Credentials credentials) throws Exception
	{
		
		
		//Credentials credentials=onlineTutoringSystemService.getCredential(userid);
		//StudentPerformance performance=onlineTutoringSystemService.getStudentPerformance(userid, testid);
		
		 Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		 
		Message message = Message.creator(new PhoneNumber("+1"+credentials.getContactnumber()), new PhoneNumber("+16607974820"),textmessage).create();
		 
		 System.out.println(message.getSid());
	}
	
}
