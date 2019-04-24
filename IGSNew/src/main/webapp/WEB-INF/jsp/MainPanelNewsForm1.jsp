<%@ include file="dbConn.jsp"%>
<%@ page import = "java.util.*"%>
<%
Statement stmt = null;
ResultSet rs =  null;
ResultSet rs1 =  null;
ResultSet rs2 =  null;
ResultSet rs3 =  null;
PreparedStatement pstmt = null;

HashMap catMap = new java.util.HashMap();
HashMap subCatMap = new java.util.HashMap();
HashMap subSubCatMap = new java.util.HashMap();

String user_id = session.getAttribute("userId").toString();

%>

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
									<h2>Add New News (Main Panel)</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>

										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

									<%
										stmt = con.createStatement();
									%>
									<form class="form-horizontal form-label-left input_mask" 
										  action = "MainPanelNewsFormSave1.jsp"
										  method="post" 
										  onsubmit="return fnSave(this.form);"
										  target="blankframe">


										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Date</label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="date" id="news_date" name="news_date" class="form-control" required>
												<!--<input type="text" class="form-control has-feedback-left" id="inputSuccess2" placeholder="First Name">-->
												<!--<span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>-->
											</div>

											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Reporter</label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<select id="reporter" name="reporter" class="form-control"	required>
													<option value="">Reporting Person</option>
													<%
														String repQuery = "select * from news_reporter_master where active_status = 'A'";
														rs = stmt.executeQuery(repQuery);
														try {
															while (rs.next()) {
															//	System.out.println(rs.getString("reporter_id"));
													%>
													<option value="<%=rs.getString("reporter_id")%>"><%=rs.getString("reporter_name")%></option>
													<%
														}

														} catch (Exception e) {

														}
													%>
												</select>
												
											</div>

										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Category</label>
											<div
												class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
										    <div style="height:200px; overflow-y:scroll; width:100%">
											<%
													try
													{
														stmt = con.createStatement();
														
														
														String catQuery = "select category_id, CONCAT((select count(1) from news_sub_cat_master ts where ts.CATEGORY_ID = t.category_id),'~', category_name , '~' ,  category_link, '~', ifnull((select '  ' from user_menu_map tm where tm.user_id = '"+user_id+"' and tm.level=1 and tm.menu_id = t.category_id),'  disabled = \"disabled\" ')) catdtl from news_cat_master t where t.ACTIVE_STATUS = 'A' order by 1";
																							
														System.out.println("catQuery:"+catQuery);
														
														rs1 = stmt.executeQuery(catQuery);
														
														System.out.println("Error....");
														
														while(rs1.next())
														{			
															catMap.put(rs1.getString("category_id"),rs1.getString("catdtl"));
														}
															
														System.out.println(catMap.size());

														Set catKey = catMap.keySet();
															Iterator catIt = catKey.iterator();
															
															//Set subSubCatKey = subSubCatMap.keySet();
															//Iterator subSubCatIt = subSubCatKey.iterator();
																
															boolean subCatFlag = false;
															
															while(catIt.hasNext())
															{
																String key = catIt.next().toString();
																String smCount = catMap.get(key).toString().split("~")[0];
																if(smCount!=null && smCount.equals("0"))
																{
																	%>
																	<input type="checkbox" name="menuitem" value="1<%=key %>" <%=catMap.get(key).toString().split("~")[3] %>/><%=catMap.get(key).toString().split("~")[1] %>
																	<br>
																	<%
																
																}
																else
																{
												%>	
																	<input type="checkbox" name="menuitem" value="1<%=key %>" <%=catMap.get(key).toString().split("~")[3] %>/>&nbsp;&nbsp;&nbsp;<%=catMap.get(key).toString().split("~")[1] %>
																	<br>
																<%
																String subCatQuery = "select sub_category_id, CONCAT(category_id, '~' , sub_category_name , '~' ,  sub_category_link, '~', ifnull((select ' ' from user_menu_map tm where tm.user_id = '"+user_id+"' and tm.level=2 and tm.menu_id = t.sub_category_id),' disabled = \"disabled\" ') ) subcatdtl from news_sub_cat_master t where t.category_id = '"+key+"' and t.ACTIVE_STATUS = 'A' order by 1";
													
																System.out.println("sub_category_id:"+subCatQuery);

																rs2 = stmt.executeQuery(subCatQuery);
																
																subCatMap = new HashMap();
																
																subCatFlag = false;
																
																while(rs2.next())
																{
																	subCatMap.put(rs2.getString("sub_category_id"),rs2.getString("subcatdtl"));
																	subCatFlag = true;
																}

																Set subCatKey = subCatMap.keySet();
																Iterator subCatIt = subCatKey.iterator();

																while(subCatIt.hasNext())
																{
																	String key1 = subCatIt.next().toString();
																	String locSubCatName = subCatMap.get(key1).toString().split("~")[1];
																	
																	
																%>
																&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="menuitem" value="2<%=key1 %>" <%=subCatMap.get(key1).toString().split("~")[3] %> />&nbsp;&nbsp;&nbsp;<%=locSubCatName %>
																
																<br>
												                                     <%
												                                    
												                					String subSubCatQuery = "select sub_sub_category_id, sub_sub_category_name, ifnull((select '  ' from user_menu_map tm where tm.user_id = '"+user_id+"' and tm.level=3 and tm.menu_id = t.sub_sub_category_id),' disabled ') dis  from news_sub_sub_cat_master t where t.sub_category_id = '"+key1+"' and t.ACTIVE_STATUS = 'A' order by 1";
	 																		        System.out.println("sub_sub_category_id:"+subSubCatQuery);
												                                    rs3 = stmt.executeQuery(subSubCatQuery);

												                            		while(rs3.next())
												                            		{
												 									%>
												 									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="menuitem" value="3<%=rs3.getString("sub_sub_category_id") %>"<%=rs3.getString("dis") %>/>&nbsp;&nbsp;&nbsp;<%=rs3.getString("sub_sub_category_name") %>
												 								
												 									<br>
												 									<%				
																					}
																}
																}
															}

													}
													catch(Exception e)
													{
														System.out.println(e);
														
													}
													finally
													{
														if(pstmt!=null)
															pstmt.close();
														if(stmt!=null)
															stmt.close();
														if(con!=null)
															con.close();
													}
													%>
													</div>
											</div>
										

										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Title</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="newstitle" name="newstitle" class="form-control" placeholder="News Title" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Sub Title</label>
											<div class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="newssubtitle" name="newssubtitle" class="form-control" placeholder="News Sub Title" required>
											</div>
										</div>

										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Brief</label>
											<div class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="newsbrief" name="newsbrief" class="form-control" placeholder="News Brief" required>
											</div>
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News Image</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="newsimage" name="newsimage" class="form-control" placeholder="News Description" required>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">News URL</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="newsurl" name="newsurl" class="form-control" placeholder="News URL" required>
											</div>
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Page Title</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="pagetitle" name="pagetitle" class="form-control" placeholder="News URL" required>
											</div>
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12">SEO Keyword</label>
											<div
												class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="text" id="seokeyword" name="seokeyword" class="form-control" placeholder="News URL" required>
											</div>
										</div>										
										<div class="form-group">
											<label class="control-label col-md-3 col-sm-6 col-xs-12"></label>
											<div class="col-md-3 col-sm-6 col-xs-12 ">
												<input type="checkbox" id="publishflag" name="publishflag" class="js-switch" value="Y"/> &nbsp;Publish
											</div>
											<label class="control-label col-md-3 col-sm-6 col-xs-12">Publish Date</label>
											<div class="col-md-3 col-sm-6 col-xs-12 form-group has-feedback">
												<input type="date" id="publishdate" name="publishdate"  class="form-control" required>
											</div>
										</div>
										<label class="control-label col-md-3 col-sm-6 col-xs-12"></label>
										<div class="col-md-9 col-sm-6 col-xs-12 form-group has-feedback">
											<div id="alerts"></div>
											<div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor-one">
												<div class="btn-group">
													<a class="btn dropdown-toggle" data-toggle="dropdown"
														title="Font"><i class="fa fa-font"></i><b
														class="caret"></b></a>
													<ul class="dropdown-menu">
													<li><a data-edit="fontName Serif" style="font-family: 'Serif'">Serif</a></li>
													<li><a data-edit="fontName Sans" style="font-family: 'Sans'">Sans</a></li>
													<li><a data-edit="fontName Arial" style="font-family: 'Arial'">Arial</a></li>
													<li><a data-edit="fontName Arial Black" style="font-family: 'Arial Black'">Arial Black</a></li>
													<li><a data-edit="fontName Courier" style="font-family: 'Courier'">Courier</a></li>
													<li><a data-edit="fontName Courier New" style="font-family: 'Courier New'">Courier New</a></li>
													<li><a data-edit="fontName Comic Sans MS" style="font-family: 'Comic Sans MS'">Comic Sans MS</a></li>
													<li><a data-edit="fontName Helvetica" style="font-family: 'Helvetica'">Helvetica</a></li>
													<li><a data-edit="fontName Impact" style="font-family: 'Impact'">Impact</a></li>
													<li><a data-edit="fontName Lucida Grande" style="font-family: 'Lucida Grande'">Lucida Grande</a></li>
													<li><a data-edit="fontName Lucida Sans" style="font-family: 'Lucida Sans'">Lucida Sans</a></li>
													<li><a data-edit="fontName Tahoma" style="font-family: 'Tahoma'">Tahoma</a></li>
													<li><a data-edit="fontName Times" style="font-family: 'Times'">Times</a></li>
													<li><a data-edit="fontName Times New Roman" style="font-family: 'Times New Roman'">Times New Roman</a></li>
													<li><a data-edit="fontName Verdana" style="font-family: 'Verdana'">Verdana</a></li>
													</ul>
												</div>

												<div class="btn-group">
													<a class="btn dropdown-toggle" data-toggle="dropdown" title="Font Size"><i class="fa fa-text-height"></i>&nbsp;
													<b class="caret"></b></a>
													<ul class="dropdown-menu">
														<li><a data-edit="fontSize 5">
																<p style="font-size: 17px">Huge</p>
														</a></li>
														<li><a data-edit="fontSize 3">
																<p style="font-size: 14px">Normal</p>
														</a></li>
														<li><a data-edit="fontSize 1">
																<p style="font-size: 11px">Small</p>
														</a></li>
													</ul>
												</div>


												<div class="btn-group">
													<a class="btn" data-edit="bold" title="Bold (Ctrl/Cmd+B)">
													<i class="fa fa-bold"></i>
													</a> 
													<a class="btn" data-edit="italic" title="Italic (Ctrl/Cmd+I)">
													<i class="fa fa-italic"></i>
													</a>
													<a class="btn" data-edit="strikethrough" title="Strikethrough">
													<i class="fa fa-strikethrough"></i>
													</a>
													<a class="btn" data-edit="underline" title="Underline (Ctrl/Cmd+U)">
													<i class="fa fa-underline"></i></a>
												</div>

												<div class="btn-group">
													<a class="btn" data-edit="insertunorderedlist"
														title="Bullet list"><i class="fa fa-list-ul"></i></a> <a
														class="btn" data-edit="insertorderedlist"
														title="Number list"><i class="fa fa-list-ol"></i></a> <a
														class="btn" data-edit="outdent"
														title="Reduce indent (Shift+Tab)"><i
														class="fa fa-dedent"></i></a> <a class="btn"
														data-edit="indent" title="Indent (Tab)"><i
														class="fa fa-indent"></i></a>
												</div>

												<div class="btn-group">
													<a class="btn" data-edit="justifyleft"
														title="Align Left (Ctrl/Cmd+L)"><i
														class="fa fa-align-left"></i></a> <a class="btn"
														data-edit="justifycenter" title="Center (Ctrl/Cmd+E)"><i
														class="fa fa-align-center"></i></a> <a class="btn"
														data-edit="justifyright" title="Align Right (Ctrl/Cmd+R)"><i
														class="fa fa-align-right"></i></a> <a class="btn"
														data-edit="justifyfull" title="Justify (Ctrl/Cmd+J)"><i
														class="fa fa-align-justify"></i></a>
												</div>

												<div class="btn-group">
													<a class="btn dropdown-toggle" data-toggle="dropdown"
														title="Hyperlink"><i class="fa fa-link"></i></a>
													<div class="dropdown-menu input-append">
														<input class="span2" placeholder="URL" type="text"
															data-edit="createLink" />
														<button class="btn" type="button">Add</button>
													</div>
													<a class="btn" data-edit="unlink" title="Remove Hyperlink"><i
														class="fa fa-cut"></i></a>
												</div>

												<div class="btn-group">
													<a class="btn" title="Insert picture (or just drag & drop)"
														id="pictureBtn"><i class="fa fa-picture-o"></i></a> <input
														type="file" data-role="magic-overlay"
														data-target="#pictureBtn" data-edit="insertImage" />
												</div>

												<div class="btn-group">
													<a class="btn" data-edit="undo" title="Undo (Ctrl/Cmd+Z)"><i
														class="fa fa-undo"></i></a> <a class="btn" data-edit="redo"
														title="Redo (Ctrl/Cmd+Y)"><i class="fa fa-repeat"></i></a>
												</div>
											</div>

											<div id="editor-one" class="editor-wrapper"></div>

											<textarea  name="newsdetail" id="newsdetail" style="display: none;"></textarea>


										</div>



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