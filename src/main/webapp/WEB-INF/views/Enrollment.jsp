<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Online Tutoring System</title>

<style>

.button1 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
.button2 {
    background-color: red; /* Red */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
h1{
  font-size: 30px;
  color: #fff;
  text-transform: uppercase;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:auto;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}
section{
  margin: 50px;
}



/* for custom scrollbar for webkit browser*/

::-webkit-scrollbar {
    width: 6px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<section>
  <!--for demo wrap-->
  <h1>Subject Enrolled</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>S.No.</th>
          <th>CourseID</th>
          <th>Course Name</th>
          <th>Faculty Name</th>
          <th></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach var="data" items="${enrolledData }" varStatus="loop">
         <form:form action="${pageContext.request.contextPath}/removeEnrollment/${data.getFacultyid() }/${data.getCourseid() }" id="form${loop.index+1 }" method="post"  modelAttribute="subjecttutor">
        <tr>
          <td>${loop.index+1 }</td>
          <td>${data.getCourseid() } </td>
          <td>${data.getCoursename() }</td>
          <td>${data.getFacultyname() }</td>
          <td><input type="Submit" class="button2" value="Drop off"  /></td>
        </tr>
        </form:form>
      </c:forEach>
      
      </tbody>
    </table>
  </div>
</section>


<section>
  <!--for demo wrap-->
  <h1>Enrollment Page</h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>S.No.</th>
          <th>CourseID</th>
          <th>Course Name</th>
          <th>Faculty Name</th>
          <th>Meeting timeing</th>
          <th></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0">
      <tbody>
      <c:forEach var="data" items="${enrollment }" varStatus="loop">
      <form:form action="${pageContext.request.contextPath}/saveEnrollment/${data.getFacultyid() }/${data.getCourseid() }" id="form${loop.index+1 }" method="post"  modelAttribute="subjecttutor">
         <form:input type="hidden" path="ID"/>
         <form:input type="hidden" path="courseid"/>
         <form:input type="hidden" path="facultyid"/>
         <form:input type="hidden" path="coursename"/>
         <form:input type="hidden" path="facultyname"/>
         
        <tr>
          <td>${loop.index+1 }</td>
          <td>${data.getCourseid() } </td>
          <td>${data.getCoursename() }</td>
          <td>${data.getFacultyname() }</td>
          <td>${data.getDay()} ${data.getStarttime()} ${data.getEndtime()}</td>
          <td><input type="Submit" class="button1" value="Enroll"  /></td>
        </tr>
       </form:form>
      </c:forEach>
      <tr></tr>
      <tr>
        <form:form action="${pageContext.request.contextPath}/index"  method="post" >
         
        <tr>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td><input ${buttonstatus }  type="Submit" class="button1" value="Go Back to Home"  /></td>
        </tr>
       </form:form>
      </tr>
      </tbody>
    </table>
  </div>
</section>



<script>
$(window).on("load resize ", function() {
  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
  $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();
</script>
</body>
</html>