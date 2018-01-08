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
                    <h1 class="page-header">Personal Information</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Personal Information
                        </div>
                        <div class="panel-body">
                            <div class="row">
                            <form role="form" action="updatepersonal" method="post" enctype="multipart/form-data">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>${message }</label>
                                        </div>
										<div class="form-group">
                                            <label>Full Name</label>
                                            <input class="form-control" placeholder="Full name" value="${credential.getName() }" name="fullname">
                                        </div>
                                        
                                        
                                        <div class="form-group">
                                            <label>Address</label>
                                            <input class="form-control" placeholder="Address" value="${credential.getAddress() }" name="address">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>City</label>
                                            <input class="form-control" placeholder="City" value="${credential.getCity() }" name="city">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Contact NUmber</label>
                                            <input class="form-control" placeholder="Contact Number" value="${credential.getContactnumber() }" name="contactnumber">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Zip Code</label>
                                            <input class="form-control" placeholder="Zipcode" value="${credential.getZipcode() }" name="zipcode">
                                        </div>
                                        
                                        <div class="form-group">
                                            <label>Country</label>
                                            <input class="form-control" placeholder="country" value="${credential.getCountry() }" name="country">
                                        </div>                                        
										
										<div class="form-group">
                                            <label>Upload Image </label>
                                            <input type="file"  name="file">
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
                                   
                                </div>
                                
                                
                                <div class="col-lg-6">
                                    <h1></h1>
                                        <fieldset >
                                        
                                        <div class="form-group">
                                            <label>Designation</label>
                                            <input class="form-control" placeholder="Designation" value="${faculty.getDesignation() }"  name="designation">
                                        </div>
                                        
                                          <div class="form-group">
                                             <label>Brief Description</label>
                                             <textarea class="form-control" rows="3" placeholder="Brief Description"   name="description">${faculty.getDescription() }</textarea>
                                           </div>
                                            
                                            <div class="form-group">
                                            <label>Expertise</label>
                                            <textarea class="form-control" rows="3" placeholder="Expertise" name="expertise">${faculty.getExpertise() }</textarea>
                                           </div>
                                            
                                            
                                        </fieldset>
                                    
                                    
                                </div>
                                 </form>
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
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
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
