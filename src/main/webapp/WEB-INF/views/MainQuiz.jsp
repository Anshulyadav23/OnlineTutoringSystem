<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="https://www.facebook.com/2008/fbml" lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

       
        <link href="<%=request.getContextPath()%>/resources/css/core-067fd913f4a8a4b895e233b9489b1d13.css" media="screen" rel="stylesheet" type="text/css" />
      <link href="<%=request.getContextPath()%>/resources/css/show-1d7b0cbacd5ce0e9df4be81d37cee172.css" media="screen" rel="stylesheet" type="text/css" />


    <link href="<%=request.getContextPath()%>/resources/css/vendor-b0144a78587ce3b09078.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/resources/css/portal-b0144a78587ce3b09078.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/resources/css/quiz.css" media="screen" rel="stylesheet" type="text/css" />

	
	<script src="http://www.fastlearning.in/controller/js/jquery-1.9.1.min.js"></script>
	


	<script type="text/javascript">
	$(document).ready(function() {
    $('label').click(function() {
        $('label').removeClass('worngans');
        $(this).addClass('worngans');
    });
});
	</script>
	
	

    
  </head>

  <body browser="windows">

    
  <div id="fb-root"></div>


    

<form:form action="${pageContext.request.contextPath}/quizanswer" method="post"  modelAttribute="question">

 <form:hidden path="ID"  />
 <form:hidden path="testid"   />
 <form:hidden path="answer"   />
 <form:hidden path="difficultylevel"   />
 <form:hidden path="marks"   />
 
      <main class="contents show no-footer">
        



<article class="js-contents contents contents--cards fit-full padding-top--3 margin-bottom--1">
  <div class="fit-fixed grid-row">
        

		

<article slug="javascript-getting-started-with-programming-3" class="js-card card card--repeat" type="repeat" state="current complete">
  <div class="card-faces">
    <section class="card-face">
      <div class="card-layout card-layout--two-pane-vertical">
    <header class="card-layout__header grid-row" style="height: 19%">
      <section class="card-content card-content--title color-scheme--white grid-row">
  <div class="grid-col-12 grid-col--align-center grid-col--no-spacing padding--2">
    <h3>Practice  <span style="float:right"><p id="timer"></p></span> </h3>
    
  </div>
</section>

    </header>

  <section class="card-layout__main" style="height: 81%;">
    <div class="grid-row">
  <section class="card-pane card-pane--full-height grid-col-6 grid-col--no-spacing">
    <section class="card-content card-content--repeat-codeblock padding--2">
  <header class="card-content--repeat-codeblock__header">
    <p class="padding-bottom--half">Q: <span class="js-question-text">${question.getQuestion() }</span></p>
  </header>
  <div class="card-content--repeat-codeblock__codeblock">
    <section class="card-content card-content--codeblock">
  <pre class="js-codeblock prettyprint prettify-snippet--theme-ace-dark">
  ${question.getDifficultylevel() }
  </pre>
</section>

  </div>
</section>

  </section>
  <section class="card-pane card-pane--full-height grid-col-6 grid-col--no-spacing">
    <section class="js-repeat-options card-content card-content--repeat-options repeat-options fit-fixed color-scheme--white"><div class="panel color-scheme--white" style="height: 100%;">
  
  <c:forEach var="data" items="${answerarray }">
   <a class="option panel__item panel__top-border" style="height: 25%">
    <div class="option__label panel__item__text panel__item__text--vertical-center panel__item__text--align-center">
      <form:radiobutton path="choice" id="${data }" value="${data }"  />
       <label for="${data }">${data }</label><br/>
    </div>
    <div class="panel__item__accessory option__feedback">
      <div class="new-cc-icon icon- icon--large"></div>
    </div>
  </a>
     
  
  </c:forEach>
  
</div>
</section>

  </section>
</div>

  </section>


    
</div>

    </section>

  </div>
</article>
		

<section class="js-controls contents-controls fit-full">
  <div class="fit-fixed grid-row">
    <section class="controls-section grid-col-2 grid-col--no-spacing">
      <button class="js-control-prev button button--secondary button--large button--alternate button--fill-space card-nav card-nav--prev">
        <span exclude="phone"><a href="${pageContext.request.contextPath}/quitExam">Quit Exam</a></span>
        <span class="new-cc-icon icon-heavyleftarrow" exclude="desktop tablet"></span>
      </button>
    </section>
    <section class="controls-section grid-col-8 grid-col--no-spacing grid-col--align-center">
      <menu class="features">
    <li id="hint" class="js-feature feature feature--flip">
      <a>
        <span>?</span>
        <aside>Hint</aside>
      </a>
    </li>
</menu>    </section>
    <section class="controls-section grid-col-2 grid-col--no-spacing">
      <button type="submit"  class="js-control-next button button--secondary button--large button--fill-space card-nav card-nav--next">
        <ul>
          <li><span class="cc-symbol cc-symbol-icon-heavycheck" exclude="phone"></span></li>
          <li><span exclude="phone">GOT IT</span></li>
        </ul>
        <span class="new-cc-icon icon-heavyrightarrow" exclude="desktop tablet"></span>
        <aside class="cta" exclude="phone"><span>Please interact with the card first</span></aside>
      </button>

    </section>
    
 </div>
 </section>
 
 


</main>
  
 </form:form> 
 
 <script type="text/javascript">
 (function timer() {
	  $.ajax({
	    url: '<%=request.getContextPath()%>/Timer/GetTimer', 
	    success: function(data) {
	    	if($.trim(data) == "Exam Over" ){
	    		location.href = "<%=request.getContextPath()%>/saveperformance/${testid}";
	    		exitExam();
         } else {
        	 $('#timer').html(data);
        	 return true;
         };
	      
	    },
	    complete: function(data) {
	    	
	    	setTimeout(timer, 1000); 
	    }
	  });
	})();
 (function exitExam() {})();
 </script>    

  </body>
</html>

