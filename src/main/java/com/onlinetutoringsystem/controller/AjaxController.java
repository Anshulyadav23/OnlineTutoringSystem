package com.onlinetutoringsystem.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onlinetutoringsystem.extra.JsonFormat;
import com.onlinetutoringsystem.extra.OptionClass;
import com.onlinetutoringsystem.model.Quiz;
import com.onlinetutoringsystem.service.OnlineTutortingSystemService;

@Controller
@RequestMapping(value="/Ajax")
public class AjaxController {

	@Autowired
	private OnlineTutortingSystemService onlineTutoringSystemService;
	
	@RequestMapping(value = "/practicequiz/{id}")
	@ResponseBody
	public List<JsonFormat> welcome(@PathVariable("id") String testid ) throws Exception
	{
		List<Quiz> quiz=onlineTutoringSystemService.getPracticeQuiz(testid);
		
		List<JsonFormat> quizJSON=new ArrayList<>();
		for (Quiz quizData : quiz) {
			List<OptionClass> data=new ArrayList<>();
			
			JsonFormat questions=new JsonFormat();
			questions.setQ(quizData.getQuestion());
			
			
			String []choices=quizData.getChoice().split("-");
			
			for (String string : choices) {
				String answer=string;
				OptionClass optionClass=new OptionClass();
				
				optionClass.setOption(answer);
				
				if(quizData.getAnswer().equalsIgnoreCase(answer))
					optionClass.setCorrect(true);
				else
					optionClass.setCorrect(false);
				
				data.add(optionClass);
			}
			
			questions.setCorrect("Correct Answer. Keep up");
			questions.setIncorrect("Wrong Answer. The Correct Answer is "+quizData.getAnswer());
			questions.setA(data);					
			quizJSON.add(questions);
		}
		
		return quizJSON;
	}
	
	@RequestMapping(value = "/Timer")
	@ResponseBody
	public String getTimer()
	{
		String dateStart = "01/14/2012 09:29:58";
		String dateStop = "01/15/2012 10:31:48";

		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

		Date d1 = null;
		Date d2 = null;

		try {
			d1 = format.parse(dateStart);
			d2 = format.parse(dateStop);

			//in milliseconds
			long diff = d2.getTime() - d1.getTime();

			long diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
			long diffHours = diff / (60 * 60 * 1000) % 24;
			long diffDays = diff / (24 * 60 * 60 * 1000);

			System.out.print(diffDays + " days, ");
			System.out.print(diffHours + " hours, ");
			System.out.print(diffMinutes + " minutes, ");
			System.out.print(diffSeconds + " seconds.");
			
			return d1.before(d2)+"";

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	
		
}
