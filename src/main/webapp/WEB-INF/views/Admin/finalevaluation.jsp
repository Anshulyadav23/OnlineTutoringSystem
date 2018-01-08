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
                    <h1 class="page-header">Final grade Evaluation Form</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Final grade Evaluation Form
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="calculatefinalgardes" method="post">
                                        
                                       <div class="form-group">
                                            <label>Selects</label>
                                            <select class="form-control" name="courseid">
                                                <option value="0">----Select Course----</option>
                                                <c:forEach var="data" items="${tutor }">
                                                <option value="${data.getCourseid() }">${data.getCoursename() }</option>
                                                </c:forEach>
                                            </select>
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
                                        <button type="submit" name="calculate" class="btn btn-default">Submit Button</button>
                                        <button type="submit" name="checkcalculate" class="btn btn-default">Check Status</button>
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


</body>

</html>
