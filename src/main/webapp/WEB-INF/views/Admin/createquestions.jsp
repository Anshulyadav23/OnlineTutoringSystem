<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>EduTech Admin Section</title>

    <!-- Bootstrap Core CSS -->
    <link href="<%=request.getContextPath()%>/resources/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="<%=request.getContextPath()%>/resources/Admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<%=request.getContextPath()%>/resources/Admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="<%=request.getContextPath()%>/resources/Admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <jsp:include page="navbar.jsp"></jsp:include>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Enter Quiz Questions</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Question Form
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" method="post" action="${pageContext.request.contextPath}/Admin/quizquestion">
                                        <input type="hidden" name="id" value="${quiz.getID()}">
                                        <div class="form-group">
                                            <label>${message }</label>
                                        </div>
										<div class="form-group">
                                            <label>Selects</label>
                                            <select class="form-control" name="quizid">
                                                <option value="0">----Select QuizID----</option>
                                                <c:forEach var="data" items="${testtable }">
                                              
                                                  <c:choose>
                                                  <c:when test="${data.getTestid()==quiz.getTestid()}">
                                                    <option value="${data.getTestid() }" selected>${data.getTestid() }</option>
                                                  </c:when>
                                                  <c:otherwise>
                                                    <option value="${data.getTestid() }">${data.getTestid() }</option>
                                                  </c:otherwise>
                                                 </c:choose>
                                                
                                                </c:forEach>
                                            </select>
                                        </div>
										
										<div class="form-group">
                                            <label>Enter Question</label>
                                            <input class="form-control" name="question" value="${quiz.getQuestion()}" placeholder="Enter text">
                                        </div>
                                        
										<div class="form-group">
                                            <label>Enter Option 1</label>
                                            <input class="form-control" placeholder="Enter text" value="${choices[0]}"  name="option1">
                                        </div>
                                        
										<div class="form-group">
                                            <label>Enter Option 2</label>
                                            <input class="form-control" placeholder="Enter text"value="${choices[1]}" name="option2">
                                        </div>
										
										<div class="form-group">
                                            <label>Enter Option 3</label>
                                            <input class="form-control" placeholder="Enter text" value="${choices[2]}" name="option3">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Enter Option 4</label>
                                            <input class="form-control" placeholder="Enter text" value="${choices[3]}" name="option4">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Enter Correct Answer</label>
                                            <input class="form-control" placeholder="Enter text" value="${quiz.getAnswer()}" name="correct">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Selects</label>
                                            <select class="form-control" name="difficulty">
                                                <option>----Select Difficulty----</option>
                                                <option ${quiz.getDifficultylevel() == 'Easy' ? 'selected' : ''} value="Easy">Easy</option>
                                                <option ${quiz.getDifficultylevel() == 'Medium' ? 'selected' : ''} value="Medium">Medium</option>
                                                <option ${quiz.getDifficultylevel() == 'Difficult' ? 'selected' : ''} value="Difficult">Difficult</option>
                                                <option ${quiz.getDifficultylevel() == 'Very Difficult' ? 'selected' : ''} value="Very Difficult">Very Difficult</option>
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Enter Marks</label>
                                            <input class="form-control" placeholder="Enter text" value="${quiz.getMarks()}" name="mark">
                                        </div>
                                        
                                        <div class="form-group">
                                            
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                        <div class="form-group">
                                           
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                        <div class="form-group">
                                            
                                        </div>
                                        <button type="submit" class="btn btn-default">Submit Button</button>
                                        <button type="reset" class="btn btn-default">Reset Button</button>
                                    </form>
                                </div>
								<!-- /.col-lg-6 (nested) -->
                                
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<%=request.getContextPath()%>/resources/Admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/Admin/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/Admin/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<%=request.getContextPath()%>/resources/Admin/dist/js/sb-admin-2.js"></script>

</body>

</html>
