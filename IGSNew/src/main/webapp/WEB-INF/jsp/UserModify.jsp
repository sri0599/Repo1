<%@ include file="dbConn.jsp"%><%	Statement stmt = null;	ResultSet rs = null;	stmt = con.createStatement();	String fields [] = new String[12];	String banner_id = request.getParameter("banner_id");	String unitedGalleryModifyQuery = "select * from united_gallery_master where banner_id = '"+banner_id+"'"; 	System.out.println("unitedGalleryMasterModifyQuery.jsp: unitedGalleryModifyQuery["+new java.util.Date()+"]"+unitedGalleryModifyQuery);	rs = stmt.executeQuery(unitedGalleryModifyQuery);   	try		{	while(rs.next())	{		fields[0] = rs.getString("banner_title");		fields[1] = rs.getString("banner_location");		fields[2] = rs.getString("banner_category");		fields[3] = rs.getString("banner_description");		fields[4] = rs.getString("banner_image");		fields[5] = rs.getString("banner_status");		fields[6] = rs.getString("banner_tooltip");		fields[7] = rs.getString("banner_id");	}		}   	catch(Exception e)  	{  		System.out.println(e);    	e.printStackTrace();  	}   	finally	{		if(rs!=null)			rs.close();		if(stmt!=null)			stmt.close();		if(con!=null)			con.close();	}%><!DOCTYPE html><html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><!-- Meta, title, CSS, favicons, etc. --><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1"><title>DataTables | Gentelella</title>   <!-- Bootstrap -->    <link href="css/bootstrap.min.css" rel="stylesheet">    <!-- Font Awesome -->    <link href="css/font-awesome.min.css" rel="stylesheet">    <!-- NProgress -->    <link href="css/nprogress.css" rel="stylesheet">    <!-- iCheck -->    <link href="css/green.css" rel="stylesheet">    <!-- bootstrap-wysiwyg -->    <link href="css/prettify.min.css" rel="stylesheet">    <!-- Select2 -->    <link href="css/select2.min.css" rel="stylesheet">    <!-- Switchery -->    <link href="css/switchery.min.css" rel="stylesheet">    <!-- starrr -->    <link href="css/starrr.css" rel="stylesheet">   <!-- bootstrap-daterangepicker -->    <link href="css/daterangepicker.css" rel="stylesheet">    <!-- Custom Theme Style -->    <link href="css/custom.min.css" rel="stylesheet">	<script src="js/jquery-1.12.4.js"></script></head><body class="nav-md">	<div class="container body">		<div class="main_container">			<div class="col-md-3 left_col">				<div class="left_col scroll-view">					<!-- logo info -->					<jsp:include page="UnitedGenTopLeftLogoInfo.jsp"></jsp:include>					<!-- logo info -->					<div class="clearfix"></div>					<!-- menu profile quick info -->			<jsp:include page="UnitedMenuProfileQuickInfo.jsp"></jsp:include>					<!-- /menu profile quick info -->					<br />					<!-- sidebar menu -->					<jsp:include page="UnitedGenSideMenuBar.jsp"></jsp:include>				<!-- /sidebar menu -->            <!-- /menu footer buttons -->                       <jsp:include page="UnitedMenuFooterButton.jsp"></jsp:include>            <!-- /menu footer buttons -->				</div>			</div>			<!-- top navigation -->			<jsp:include page="UnitedGenTopNavBar.jsp"></jsp:include>			<!-- /top navigation -->		<!-- page content -->			<div class="right_col" role="main">				<div class="">					<div class="clearfix"></div>					<div class="row">						<!-- /Datatable -->						<div class="col-md-12 col-sm-12 col-xs-12">							<div class="x_panel">								<div class="x_title">								<h2>United Gallery Image Modify</h2>								<ul class="nav navbar-right panel_toolbox">										<li><a class="collapse-link"><i												class="fa fa-chevron-up"></i></a></li>										<li><a class="close-link"><i class="fa fa-close"></i></a>										</li>									</ul>									<div class="clearfix"></div>								</div>								<div class="x_content">									<form class="form-horizontal form-label-left input_mask" action="UnitedGalleryModifySave.jsp" method="post" target="blankframe"  enctype="multipart/form-data" >										<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Title</label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="text" id="banner_title" name="banner_title" class="form-control" placeholder="Banner Title" value="<%= fields[0]%>">											<input type="hidden" id="banner_id" name="banner_id" class="form-control" placeholder="Banner Id" value="<%= fields[7]%>">										</div>									</div>																		<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Location</label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="text" id="banner_location" name="banner_location" class="form-control" placeholder="Banner Location" value="<%= fields[1]%>" />										</div>									</div>																		<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Category </label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="text" id="banner_category" name="banner_category" class="form-control" placeholder="Banner Category" value="<%= fields[2]%>" />										</div>									</div>																		<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Description</label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="text" id="banner_description" name="banner_description" class="form-control" placeholder="Banner Description" value="<%= fields[3]%>" />										</div>									</div>																		<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Image</label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="file" id="banner_image" name="banner_image" class="form-control" placeholder="Banner Image" ><%= fields[4]%>										</div>									</div>																		<div class="form-group">										<label class="control-label col-md-3 col-sm-6 col-xs-12">Banner Tooltip</label>										<div											class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">											<input type="text" id="banner_tooltip" name="banner_tooltip" class="form-control" placeholder="Banner Tooltip" value = " <%= fields[6]%>" />										</div>									</div>																		<div class="col-md-3 col-sm-6 col-xs-12 ">										<input type="checkbox" id="banner_status" name="banner_status" class="js-switch" value="Y" <% if(fields[5]!=null && fields[5].equals("Y")){%>checked = "true" <%} %>/> &nbsp;Active Status</div>									</div>	
    <div class="ln_solid"></div>
    <div class="form-group">
    <div class="col-md-6 col-md-offset-3">
    <button id="send" type="submit" class="btn btn-success">Submit</button>
    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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


	<script>
	

	
		$('#modal1').on(
				'show.bs.modal',
				function(e) {
					$(this).addClass('modal-scrollfix').find('#mbd1').html(
							'loading...').load(
							'CategoryAdd1.jsp',
							function() {
								// Use Bootstrap's built-in function to fix scrolling (to no avail)
								$('#modal1').removeClass('modal-scrollfix')
										.modal('handleUpdate');
							});
				});

		$('#modal2').on(
				'show.bs.modal',
				function(e) {

					// var rowid = $(e.relatedTarget).parent().parent().text();
					var uid;
					var $row = $(e.relatedTarget).closest("tr"), // Finds the closest row <tr> 
					$tds = $row.find("td:nth-child(1)"); // Finds the 2nd <td> element

					$.each($tds, function() { // Visits every single <td> element
						//console.log($(this).text());         // Prints out the text within the <td>
						uid = $(this).text()
						//alert($(this).text())
					});

					$(this).addClass('modal-scrollfix').find('#mbd2').html(
							'loading...').load(
							'test1.jsp?uid=' + uid,
							function() {
								// Use Bootstrap's built-in function to fix scrolling (to no avail)
								$('#modal2').removeClass('modal-scrollfix')
										.modal('handleUpdate');
							});
				});
	</script>

  <iframe id="blankframe" name="blankframe" width="0" height="0"></iframe>
</body>
</html>              