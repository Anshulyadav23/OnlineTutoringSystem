package com.onlinetutoringsystem.controller;

import java.util.ArrayList;
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
@RequestMapping(value="/Timer")
public class TimerController {

	static long minutes=0, seconds=0;
	@Autowired
	private OnlineTutortingSystemService onlineTutoringSystemService;
	
	@RequestMapping(value = "/GetTimer")
	@ResponseBody
	public String getTimer() throws Exception
	{
		while(true) {	
			
			if(seconds<=1)
			{
				minutes--;
				seconds=59;
			}
			else
			{
				seconds--;
			}
			
			if(minutes<0)
				return "Exam Over";
			
			return minutes+":"+seconds;
		}
	}
	
	
		
}
