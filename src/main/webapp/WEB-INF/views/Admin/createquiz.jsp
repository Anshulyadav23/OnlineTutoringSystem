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
    <link href="<%=request.getContextPath()%>/resources/Admin/vendor/bootstrap/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

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
                    <h1 class="page-header">Create Quiz</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Quiz Form
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="${pageContext.request.contextPath}/Admin/createnewquiz" method="post">
                                        <input type="hidden" name="id" value="${testtable.getID() }">
                                        <div class="form-group">
                                            <label>${message }</label>
                                        </div>
                                        <div class="form-group">
                                            <label>Selects Course</label>
                                            <select class="form-control" name="courseid">
                                            <option value="0">----Select Course----</option>
                                            <c:forEach var="data" items="${tutor }">
                                                
                                             <c:choose>
                                            <c:when test="${data.getCourseid()==testtable.getCourseID()}">
                                             <option value="${data.getCourseid() }" selected >${data.getCoursename() }</option>
                                            </c:when>
                                            <c:otherwise>
                                             <option value="${data.getCourseid() }">${data.getCoursename() }</option>
                                            </c:otherwise>
                                             </c:choose>
                                             </c:forEach>
                                            </select>
                                        </div>
                                        
										<div class="form-group">
                                            <label>Enter Quiz Name</label>
                                            <input class="form-control" placeholder="Enter text" name="quizid" value="${testtable.getTestid() }">
                                        </div>
                                        
                                        
										<div class="form-group">
										      <label >DateTime Picking</label>
										      <div class="input-group date form_datetime col-md-5" style="width:100%"  data-date-format="mm/dd/yyyy hh:ii:ss" data-link-field="dtp_input1">
										      <input class="form-control" size="16" type="text" name="time" value="${testtable.getTime() }" readonly >
										      <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										      <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
										      </div>
										      <input type="hidden" id="dtp_input1" value="" /><br/>
									    </div>
                                        
										<div class="form-group">
                                            <label>Enter Number of Questions</label>
                                            <input class="form-control" placeholder="Enter text" name="numberofquestions" value="${testtable.getNumberofquestions() }">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Enter Exam Duration</label>
                                            <input class="form-control" placeholder="Enter text" name="duration" value="${testtable.getDuration() }">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Enter Total Marks</label>
                                            <input class="form-control"  name="totalmarks" value="${testtable.getTotalmarks() }">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Exam Description</label>
                                            <textarea class="form-control" rows="3" name="description">${testtable.getDescription() }</textarea>
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
    
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/Admin/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>
    

</body>

</html>
