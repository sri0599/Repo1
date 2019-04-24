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
    
     <script>
    	 function fnSave(param)
    	  {
    	      //  document.forms[0].action="MainPanelNewsFormSave1.jsp";
    	      //  document.forms[0].submit();
      	      document.forms[0].submit.disabled = true ;
    	      if(document.forms[0].newsdetail.value == "")
    	    	  {
    	    	  	alert("Please fill News Detail");
    	    	  	return false;
    	    	  }
    	      
    	  }
    
	$(document).ready(
			function() {

				 
				 $('#submit').click(
							function() {
								document.getElementById('newsdetail').value = $('#editor-one').html();
							});
			});
	
</script>


</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<!-- logo info -->
					<jsp:include page="GenTopLeftLogoInfo.jsp"></jsp:include>
					<!-- logo info -->
					<div class="clearfix"></div>

					<!-- menu profile quick info -->
			<jsp:include page="MenuProfileQuickInfo.jsp"></jsp:include>
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<jsp:include page="GenSideMenuBar.jsp"></jsp:include>
					<!-- /sidebar menu -->


            <!-- /menu footer buttons -->           
            <jsp:include page="MenuFooterButton.jsp"></jsp:include>
            <!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<jsp:include page="GenTopNavBar.jsp"></jsp:include>
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
									<h2>Register New User</h2>
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
										  action = "MainPanelNewsFormSave1.jsp"
										  method="post" 
										  onsubmit="return fnSave(this.form);"
										  target="blankframe">
																				
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Search Parameters for Supporting Member<span class="required">*</span></label>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">IGS User Id<span class="required">*</span></label>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Old IGS Code</label>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Name</label>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Email</label>
										</div>
										<div class="form-group">
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="firsrName" name="firstName" class="form-control" placeholder="First Name" required>
											</div>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="middleName" name="middleName" class="form-control" placeholder="Middle Name" required>
											</div>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="middleName" name="middleName" class="form-control" placeholder="Middle Name" required>
											</div>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="middleName" name="middleName" class="form-control" placeholder="Middle Name" required>
											</div>
										</div>
										<div class="form-group">
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Last Name<span class="required">*</span></label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="lastName" name="lastName" class="form-control" placeholder="Last Name" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12"><span class="required">*</span></label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">User Name<span class="required">*</span></label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="userName" name="userName" class="form-control" placeholder="User Name" required>
											</div>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">	
												Check Availability										
											</div>
											
											<label class="control-label col-md-3 col-sm-6 col-xs-12"></label>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Password<span class="required">*</span></label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Confirm Password<span class="required">*</span></label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm Password" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">IGS Member Code</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="igsMemberCode" name="igsMemberCode" class="form-control" placeholder="IGS Member Code" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Date Of Birth<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="date" id="dateOfBirth" name="dateOfBirth" class="form-control" placeholder="Date Of Birth" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Sex<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="sex" id="sex"  class="form-control">
									            <option value="M">Male</option>
									            <option value="F">Female</option>
									          </select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Correspondence Address<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="correspondenceAddress" name="correspondanceAddress" class="form-control" placeholder="Correspondence Address" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Permanent Address<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="permanentAddress" name="permanentAddress" class="form-control" placeholder="Permanent Address" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Country<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="country" name="country" class="form-control" placeholder="Country" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">State<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="state" name="state" class="form-control" placeholder="State" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">City<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="city" name="city" class="form-control" placeholder="City" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Pin Code</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="pinCode" name="pinCode" class="form-control" placeholder="Pin Code" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Land Line No</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="landlineNo" name="landlineNo" class="form-control" placeholder="Landline No" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Mobile No</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="mobileNo" name="mobileNo" class="form-control" placeholder="Mobile No" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Fax No</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="faxNo" name="faxNo" class="form-control" placeholder="FaxNo" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Email Id.</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="faxNo" name="faxNo" class="form-control" placeholder="FaxNo" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Designation</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="designation" name="designation" class="form-control" placeholder="Designation" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Organization</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="organization" name="organization" class="form-control" placeholder="Organization" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Department</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="department" name="department" class="form-control" placeholder="Department" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Specialization</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="specialization" name="specialization" class="form-control" placeholder="Specialization" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Other's</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="others" name="others" class="form-control" placeholder="Other's" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Nationality<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="nationality" name="nationality" class="form-control" placeholder="Nationality" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Supporting Member 1(Id)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="supportingMember1" name="supportingMember1" class="form-control" placeholder="Supporting Member 1(Id)" required>
											</div>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="button" id="find1" name="find1" value="Find" class="btn btn-primar" onClick="window.open('supporter_find.jsp?thru=through','popUpWindow','height=500,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')" placeholder="Nationality" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Supporting Member 2(Id)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="supportingMember2" name="supportingMember2" class="form-control" placeholder="Supporting Member 2(Id)" required>
											</div>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="button" id="find1" name="find1" value="Find" class="btn btn-primar" onClick="window.open('supporter_find.jsp?thru=through','popUpWindow','height=500,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')" placeholder="Nationality" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Category<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="catagory" id="catagory"  class="form-control">
												<option value="AM">Associate Membership (AM)</option>
									            <option value="LM">Life Membership (LM)</option>
									            <option value="LF">Life Fellowship (LF)</option>
									            <option value="HF">Honorary Fellowship (HF)</option>            
									            <option value="DM">Donor Membership (DM)</option>
									            <option value="DF">Donor Fellowship (DF)</option>
									            <option value="SM">Student Membership (SM)</option>
									            <option value="IM">Institution Membership (IM)</option>
									            <option value="ISSMGEM">ISSMGE Membership (ISSMGEM)</option>
									
									          </select>
												</div>
										</div>
											<div class="x_title">
												<h2>Official Information</h2>													
													<div class="clearfix"></div>
											</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Letters Undelivered</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="retltr" class="form-control" id="retltr">
											            <option value="Y">Yes</option>
           												<option value="N" selected="selected">No</option>
         										 </select>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Executive Member</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="exectve" class="form-control" id="exectve" onChange="if(this.value=='Y'){document.getElementById('exectve_div').style.display = 'block'} else document.getElementById('exectve_div').style.display = 'none'">
            									<option value="Y">Yes</option>
												<option value="N" selected="selected">No</option>
          									</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Membership Subscription</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="membershipSubscription" name="membershipSubscription" class="form-control" placeholder="Membership Subscription" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Journal Subscription (Annual)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="journalSubscription" name="journalSubscription" class="form-control" placeholder="Journal Subscription" required>
											</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Year</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="mem2011_year" id="mem2011_year" class="form-control">

              <option value="1948">1948</option>

              <option value="1949">1949</option>

              <option value="1950">1950</option>

              <option value="1951">1951</option>

              <option value="1952">1952</option>

              <option value="1953">1953</option>

              <option value="1954">1954</option>

              <option value="1955">1955</option>

              <option value="1956">1956</option>

              <option value="1957">1957</option>

              <option value="1958">1958</option>

              <option value="1959">1959</option>

              <option value="1960">1960</option>

              <option value="1961">1961</option>

              <option value="1962">1962</option>

              <option value="1963">1963</option>

              <option value="1964">1964</option>

              <option value="1965">1965</option>

              <option value="1966">1966</option>

              <option value="1967">1967</option>

              <option value="1968">1968</option>

              <option value="1969">1969</option>

              <option value="1970">1970</option>

              <option value="1971">1971</option>

              <option value="1972">1972</option>

              <option value="1973">1973</option>

              <option value="1974">1974</option>

              <option value="1975">1975</option>

              <option value="1976">1976</option>

              <option value="1977">1977</option>

              <option value="1978">1978</option>

              <option value="1979">1979</option>

              <option value="1980">1980</option>

              <option value="1981">1981</option>

              <option value="1982">1982</option>

              <option value="1983">1983</option>

              <option value="1984">1984</option>

              <option value="1985">1985</option>

              <option value="1986">1986</option>

              <option value="1987">1987</option>

              <option value="1988">1988</option>

              <option value="1989">1989</option>

              <option value="1990">1990</option>

              <option value="1991">1991</option>

              <option value="1992">1992</option>

              <option value="1993">1993</option>

              <option value="1994">1994</option>

              <option value="1995">1995</option>

              <option value="1996">1996</option>

              <option value="1997">1997</option>

              <option value="1998">1998</option>

              <option value="1999">1999</option>

              <option value="2000">2000</option>

              <option value="2001">2001</option>

              <option value="2002">2002</option>

              <option value="2003">2003</option>

              <option value="2004">2004</option>

              <option value="2005">2005</option>

              <option value="2006">2006</option>

              <option value="2007">2007</option>

              <option value="2008">2008</option>

              <option value="2009">2009</option>

              <option value="2010">2010</option>

              <option value="2011">2011</option>

              <option value="2012">2012</option>

              <option value="2013">2013</option>

              <option value="2014">2014</option>

              <option value="2015">2015</option>

              <option value="2016">2016</option>

              <option value="2017">2017</option>

              <option value="2018">2018</option>

              <option value="2019">2019</option>

              <option value="2020">2020</option>

              <option value="2021">2021</option>

              <option value="2022">2022</option>

              <option value="2023">2023</option>

              <option value="2024">2024</option>

              <option value="2025">2025</option>

            </select> 
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Year</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
				 <select name="jou2011_year" id="jou2011_year"  class="form-control">

              <option value="1948">1948</option>

              <option value="1949">1949</option>

              <option value="1950">1950</option>

              <option value="1951">1951</option>

              <option value="1952">1952</option>

              <option value="1953">1953</option>

              <option value="1954">1954</option>

              <option value="1955">1955</option>

              <option value="1956">1956</option>

              <option value="1957">1957</option>

              <option value="1958">1958</option>

              <option value="1959">1959</option>

              <option value="1960">1960</option>

              <option value="1961">1961</option>

              <option value="1962">1962</option>

              <option value="1963">1963</option>

              <option value="1964">1964</option>

              <option value="1965">1965</option>

              <option value="1966">1966</option>

              <option value="1967">1967</option>

              <option value="1968">1968</option>

              <option value="1969">1969</option>

              <option value="1970">1970</option>

              <option value="1971">1971</option>

              <option value="1972">1972</option>

              <option value="1973">1973</option>

              <option value="1974">1974</option>

              <option value="1975">1975</option>

              <option value="1976">1976</option>

              <option value="1977">1977</option>

              <option value="1978">1978</option>

              <option value="1979">1979</option>

              <option value="1980">1980</option>

              <option value="1981">1981</option>

              <option value="1982">1982</option>

              <option value="1983">1983</option>

              <option value="1984">1984</option>

              <option value="1985">1985</option>

              <option value="1986">1986</option>

              <option value="1987">1987</option>

              <option value="1988">1988</option>

              <option value="1989">1989</option>

              <option value="1990">1990</option>

              <option value="1991">1991</option>

              <option value="1992">1992</option>

              <option value="1993">1993</option>

              <option value="1994">1994</option>

              <option value="1995">1995</option>

              <option value="1996">1996</option>

              <option value="1997">1997</option>

              <option value="1998">1998</option>

              <option value="1999">1999</option>

              <option value="2000">2000</option>

              <option value="2001">2001</option>

              <option value="2002">2002</option>

              <option value="2003">2003</option>

              <option value="2004">2004</option>

              <option value="2005">2005</option>

              <option value="2006">2006</option>

              <option value="2007">2007</option>

              <option value="2008">2008</option>

              <option value="2009">2009</option>

              <option value="2010">2010</option>

              <option value="2011">2011</option>

              <option value="2012">2012</option>

              <option value="2013">2013</option>

              <option value="2014">2014</option>

              <option value="2015">2015</option>

              <option value="2016">2016</option>

              <option value="2017">2017</option>

              <option value="2018">2018</option>

              <option value="2019">2019</option>

              <option value="2020">2020</option>

              <option value="2021">2021</option>

              <option value="2022">2022</option>

              <option value="2023">2023</option>

              <option value="2024">2024</option>

              <option value="2025">2025</option>

            </select>  										</div>
										</div>
											<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Paid Lifetime For Journal</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											<select name="jlife_time" class="form-control" id="jlife_time"  onChange="if(this.value=='Y'){document.getElementById('jlife_time_div').style.display = 'block'} else document.getElementById('jlife_time_div').style.display = 'none'">

            <option value="Y">Yes</option>

            <option value="N" selected="selected">No</option>

          </select>												</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Member Of ISSMGE(International Society)<span class="required">*</span></label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
											 <select name="issmge1013_flag" class="form-control" id="issmge1013_flag"   onChange="if(this.value=='Y'){document.getElementById('issmge1013_div').style.display = 'block'} else document.getElementById('issmge1013_div').style.display = 'none'">

            <option value="Y" >Yes</option>

            <option value="N" selected="selected">No</option>

          </select>
											</div>
										</div>
											<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Enrollment Year</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
<select name="enrlyear" class="form-control" id="enrlyear">

            <option value="1948">1948</option>

            <option value="1949">1949</option>

            <option value="1950">1950</option>

            <option value="1951">1951</option>

            <option value="1952">1952</option>

            <option value="1953">1953</option>

            <option value="1954">1954</option>

            <option value="1955">1955</option>

            <option value="1956">1956</option>

            <option value="1957">1957</option>

            <option value="1958">1958</option>

            <option value="1959">1959</option>

            <option value="1960">1960</option>

            <option value="1961">1961</option>

            <option value="1962">1962</option>

            <option value="1963">1963</option>

            <option value="1964">1964</option>

            <option value="1965">1965</option>

            <option value="1966">1966</option>

            <option value="1967">1967</option>

            <option value="1968">1968</option>

            <option value="1969">1969</option>

            <option value="1970">1970</option>

            <option value="1971">1971</option>

            <option value="1972">1972</option>

            <option value="1973">1973</option>

            <option value="1974">1974</option>

            <option value="1975">1975</option>

            <option value="1976">1976</option>

            <option value="1977">1977</option>

            <option value="1978">1978</option>

            <option value="1979">1979</option>

            <option value="1980">1980</option>

            <option value="1981">1981</option>

            <option value="1982">1982</option>

            <option value="1983">1983</option>

            <option value="1984">1984</option>

            <option value="1985">1985</option>

            <option value="1986">1986</option>

            <option value="1987">1987</option>

            <option value="1988">1988</option>

            <option value="1989">1989</option>

            <option value="1990">1990</option>

            <option value="1991">1991</option>

            <option value="1992">1992</option>

            <option value="1993">1993</option>

            <option value="1994">1994</option>

            <option value="1995">1995</option>

            <option value="1996">1996</option>

            <option value="1997">1997</option>

            <option value="1998">1998</option>

            <option value="1999">1999</option>

            <option value="2000">2000</option>

            <option value="2001">2001</option>

            <option value="2002">2002</option>

            <option value="2003">2003</option>

            <option value="2004">2004</option>

            <option value="2005">2005</option>

            <option value="2006">2006</option>

            <option value="2007">2007</option>

            <option value="2008">2008</option>

            <option value="2009">2009</option>

            <option value="2010">2010</option>

            <option value="2011">2011</option>

            <option value="2012">2012</option>

            <option value="2013">2013</option>

            <option value="2014">2014</option>

            <option value="2015">2015</option>

            <option value="2016">2016</option>

            <option value="2017">2017</option>

            <option value="2018">2018</option>

            <option value="2019">2019</option>

            <option value="2020">2020</option>

            <option value="2021">2021</option>

            <option value="2022">2022</option>

            <option value="2023">2023</option>

            <option value="2024">2024</option>

            <option value="2025">2025</option>

          </select> 											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Paid Receipt Scan Copy</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="paidReceiptScanCopy" name="paidReceiptScanCopy" class="form-control" placeholder="Paid Receipt Scan Copy" required>
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Other's Paid</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="othersPaid" name="othersPaid" class="form-control" placeholder="Other's Paid" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Self Picture</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="selfPicture" name="selfPicture" class="form-control" placeholder="Self Picture" required>
											</div>
										
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Supporting Member1 Signature,Mob. Email Pix(*.jpg,*.jpeg,*.gif,*.png)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="supportingMember1Signature" name="supportingMember1Signature" class="form-control" placeholder="Supporting Member1 Signature" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Supporting Member2 Signature,Mob. Email Pix(*.jpg,*.jpeg,*.gif,*.png)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="supportingMember2Signature" name="supportingMember2Signature" class="form-control" placeholder="Supporting Member2 Signature" required>
											</div>
										
											<label class="control-label col-md-3 col-sm-6 col-xs-12">DOB Proof (*.jpg,*.jpeg,*.gif,*.png)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="dobProof" name="dobProof" class="form-control" placeholder="DOB Proof" required>
											</div>
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Higher Educational Document(*.jpg,*.jpeg,*.gif,*.png, *.pdf,*.doc,*.docx)</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="file" id="higherEducationalDoc" name="higherEducationalDoc" class="form-control" placeholder="Higher Educational Document" required>
											</div>
										</div>
										<label class="control-label col-md-3 col-sm-6 col-xs-12"></label>
										



										<div class="form-group">
											<div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-3">
												<button type="button" class="btn btn-primary">Cancel</button>
												<button class="btn btn-primary" type="reset">Reset</button>
												<button type="submit" id="submit" name="submit" class="btn btn-success" >Submit</button>
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

			<jsp:include page="GenFooterNavBar.jsp"></jsp:include>

			<!-- /footer content -->

		</div>
	</div>

	<div id="modal1" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">New Category</h4>
				</div>
				<div id="mbd1" class="modal-body">
					<p>One fine body&hellip;</p>
				</div>
				<!-- <div class="modal-footer">
					        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        <button type="button" class="btn btn-primary">Save changes</button>
					      </div> -->
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal1 -->

	<div id="modal2" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">Modal title2</h4>
				</div>
				<div id="mbd2" class="modal-body">
					<p>One fine body&hellip;</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal1 -->

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