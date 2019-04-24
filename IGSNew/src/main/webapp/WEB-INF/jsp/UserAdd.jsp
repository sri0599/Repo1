<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DataTables | Gentelella</title>
   <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="css/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="css/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="css/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="css/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
    <script src="js/jquery-1.12.4.js"></script>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<!-- logo info -->
					<jsp:include page="UnitedGenTopLeftLogoInfo.jsp"></jsp:include>
					<!-- logo info -->
					<div class="clearfix"></div>
					<!-- menu profile quick info -->
			<jsp:include page="UnitedMenuProfileQuickInfo.jsp"></jsp:include>
					<!-- /menu profile quick info -->
					<br />
					<!-- sidebar menu -->
					<jsp:include page="UnitedGenSideMenuBar.jsp"></jsp:include>
					<!-- /sidebar menu -->
            <!-- /menu footer buttons -->           
            <jsp:include page="UnitedMenuFooterButton.jsp"></jsp:include>
            <!-- /menu footer buttons -->
				</div>
			</div>
			<!-- top navigation -->
			<jsp:include page="UnitedGenTopNavBar.jsp"></jsp:include>
			<!-- /top navigation -->
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="clearfix"></div>
					<div class="row">
					<!-- /Datatable -->
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>United Gallery Image Upload</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>

										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

									<form class="form-horizontal form-label-left input_mask" 
										  action="UnitedGalleryAddSave.jsp" 
										  method="post" 
										  target="blankframe" 
										  enctype="multipart/form-data" 
										  onsubmit = "return fnValidate();" >
			
  							<div class="form-group">
	       
									<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Title</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="banner_title" name="banner_title" class="form-control" placeholder="Banner Title">
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Location</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="banner_location" name="banner_location" class="form-control" placeholder="Banner Location">
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Category</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="banner_category" name="banner_category" class="form-control" placeholder="Banner Category">
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Description</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="banner_description" name="banner_description" class="form-control" placeholder="Banner Description">
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Image</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="banner_image" name="banner_image" class="form-control" placeholder="Banner Image">
											</div>
										</div>
																		
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Tooltip</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="banner_tooltip" name="banner_tooltip" class="form-control" placeholder="Banner Tooltip">
											</div>
										</div>
											
									<div class="form-group">	
									<label class="control-label col-md-3 col-sm-6 col-xs-12"></label>	
									<div class="col-md-6 col-sm-6 col-xs-12 ">
										<input type="checkbox" id="banner_status" name="banner_status" class="js-switch" value="Y"/> &nbsp;Banner Status</div>
									</div>
									
										<div class="form-group">
											<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
												<button type="button" class="btn btn-primary">Cancel</button>
												<button class="btn btn-primary" type="reset">Reset</button>

											<button type="submit" id="submit" name="submit" class="btn btn-success" >Submit</button>
											</div>
										</div>
										</div>
									</form>

								</div>
							</div>
						</div>

						<!-- /Datatable -->
				</div>
				</div>
			</div>
			<!-- /page content -->
			<!-- footer content -->
			<jsp:include page="UnitedGenFooterNavBar.jsp"></jsp:include>
			<!-- /footer content -->
		</div>
	</div>
	
    <!-- jQuery -->
   <script src="js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="js/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="js/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="js/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="js/moment.min.js"></script>

   <script src="js/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="js/bootstrap-wysiwyg.min.js"></script>
    <script src="js/jquery.hotkeys.js"></script>
    <script src="js/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="js/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="js/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="js/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="js/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="js/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="js/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="js/custom.min.js"></script>
	<!-- jQuery autocomplete -->
	<script src="js/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script src="js/starrr.js"></script>
	<!-- NEW -->

	<!-- Select2 -->
	<script src="js/select2.full.min.js"></script>
  <iframe id="blankframe" name="blankframe" width="0" height="0"></iframe>

</body>
</html>