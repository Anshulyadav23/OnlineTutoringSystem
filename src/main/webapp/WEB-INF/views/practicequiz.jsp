<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="content-type">

        <title>Online Tutoring System</title>

        <link href="<%=request.getContextPath()%>/resources/css/reset.css" media="screen" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/resources/css/slickQuiz.css" media="screen" rel="stylesheet" type="text/css">
        <link href="<%=request.getContextPath()%>/resources/css/master.css" media="screen" rel="stylesheet" type="text/css">
    </head>

    <body id="slickQuiz">
        <h1 class="quizName"><!-- where the quiz name goes --></h1>

        <div class="quizArea">
            <div class="quizHeader">
                <!-- where the quiz main copy goes -->

                <a class="button startQuiz" href="#">Get Started!</a>
               
                <p id="data"></p>
        
            </div>

            <!-- where the quiz gets built -->
        </div>

        <div class="quizResults">
            <h3 class="quizScore">You Scored: <span><!-- where the quiz score goes --></span></h3>

            <h3 class="quizLevel"><strong>Ranking:</strong> <span><!-- where the quiz ranking level goes --></span></h3>

            <div class="quizResultsCopy">
                <!-- where the quiz result copy goes -->
            </div>
        </div>

        <script src="<%=request.getContextPath()%>/resources/js/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/resources/js/slickQuiz.js"></script>
         
        <script>
        
       $(document).ready(function() { 
        	var quizJSON= {
            	    "info": {
            	        "name":    "Test Your Knowledge!!",
            	        "main":    "<p>Think you're smart enough to be on Jeopardy? Find out with this super crazy knowledge quiz!</p>",
            	        "results": "<h5>Learn More</h5><p></p>",
            	        "level1":  "Good Work",
            	        "level2":  "Good Work",
            	        "level3":  "Good Work",
            	        "level4":  "Good Work",
            	        "level5":  "Good Work" // no comma here
            	    },
            	    "questions": [
            	    	
            	    	
            	    		]
            	};    	
        	
        	$.ajax({
                url : 'http://localhost:8080/OnlineTutoringSystem/Ajax/practicequiz/${testid}',
                dataType: 'json',
                type : 'GET',
                contentType: 'application/json',
                mimeType: 'application/json',
                success: function (data) {
                	quizJSON.questions=data;
                	var jsondata=JSON.stringify(quizJSON);
               	 console.log(jsondata);
              // 	$("#data").html(jsondata);
               	
               	//var myjson=JSON.parse(jsondata);
               	
              // 	alert(JSON.stringify(myjson));
               	
             	$('#slickQuiz').slickQuiz({json: quizJSON});
                  },
                  error: function (data) {
                	  var parsedJson = $.parseJSON(data);
                         alert("Error" + data); //to print name of employee
                    }
            });
        });
        
        
        
        
        </script>
    </body>
</html>
