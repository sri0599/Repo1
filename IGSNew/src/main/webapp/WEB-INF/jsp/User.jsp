<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IGS User</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="css/custom.min.css" rel="stylesheet">
    
	<script src="js/jquery-1.12.4.js"></script>    
    <script>
	
$(document).ready(function() {
	 var printCounter = 0;
	    // Append a caption to the table before the DataTables initialisation
	    $('#example').append('<caption style="caption-side: top"><button type="button" class="btn btn-success btn-xs" onclick="window.location.href=\'/userRegForm\';">Add New User</button></caption>');

	  	var table = $('#example').DataTable( {
			dom: 'lBfrtip',
	        buttons: [
		    		{
		                extend: 'copy',
		                messageTop: null,
		                className: 'btn btn-info btn-xs'
		        	},
		        	{
		                extend: 'excel',
		                messageTop: null,
		                className: 'btn btn-info btn-xs'
		        	},
	            	{
		                extend: 'pdf',
		                messageBottom: null,
		                className: 'btn btn-info btn-xs'
	            	}
	            	,
	            	{
		                extend: 'print',
		                messageBottom: null,
		                className: 'btn btn-info btn-xs',
		                exportOptions: {
		                columns: ':visible',
	                },
	                customize: function (win) {
	                	$(win.document.body).find('table').addClass('display').css('font-size', '10px');
	                    $(win.document.body).find('tr:nth-child(odd) td').each(function(index){
	                        $(this).css('background-color','#D0D0D0');
	                    });
	                    $(win.document.body).find('h1').css('text-align','center');
	                }
	                //text: 'Print current page',
	               /*  exportOptions: {
	                    modifier: {
	                        page: 'current'
	                    }
	                } */
	                //autoPrint: false
	                
	         		}
	            
	      ],   
	      "processing": true,
	      scrollX:        true,	        
	      "serverSide": true,
	      "ajax": {
        "type": "POST",
        "url": '/userListJson'
        //"contentType": 'application/json; charset=utf-8'
		},
	      "columnDefs": [ {
	      "targets": -1,
	      "data": null,
	     // "pagingType": "simple_numbers",
	      "defaultContent": '<button type="button" value="ddddd" class="btn btn-success btn-xs" >Modify</button>'
	      },
	      {
	    	  "targets": [ 0 ],
	          "visible": true
	      } 
	      ]
	  } );
	  
		$('#example tbody').on('click', 'button', function () {

	  		//alert($(this).text());

		  	var $row = $(this).closest("tr"),        // Finds the closest row <tr> 

		    $tds = $row.find("td:nth-child(1)"); // Finds the 2nd <td> element

		    //alert($row.text());

			$.each($tds, function() {                // Visits every single <td> element			           // Prints out the text within the <td>

				//alert($(this).text());

				window.location.href="UserModify?banner_id="+$(this).text() ;

			});

	  	});
	  
	 // $(win.document.body).find('table').addClass('display').css('font-size', '5px');
	 
	   
	  /*  $('#example tbody').on('click', 'tr', function () {
	        var data = table.row( this ).data();
	        //alert( 'You clicked on '+data[2]+'\'s row' );
	        
 			var $row = $(this);
	        
	        $tds = $row.find("button:nth-child(1)"); // Finds the 2nd <td> element
	        //alert($tds.length())
	        //$tds.chil().click();
	        //$tds.click();
	        
	        $.each($tds, function() {                // Visits every single <td> element
		    //console.log($(this).text());         // Prints out the text within the <td>
			//uid = $(this).text()
				alert('ddddddd');
				//$(this).click()
				//alert($(this).click())
			});
			//alert(uid)
			
			
		    //alert();
		    
	       
	    } );  */
	
	  
	  /* $('#example tbody').on( 'click', 'button', function () {
		      var data = table.row( $(this).parents('tr')).data();
		      alert( data[0] +"'s salary is: "+ data[ 0 ]);
		      
		  } ); 
 */
	} );




 
 /* 
  $(document).ready(function() {
	    $('#example').DataTable( {
	        "processing": true,
	        "serverSide": true,
	        "ajax": {
				"url": "dt",
				"type": "POST",
				"data":function(data) {
					data.iDisplayStart = $('#example_length').val();
				},
			},
	        "columns": [
	            { "data": "engine" },
	            { "data": "browser" },
	            { "data": "platform" },
	            { "data": "version" },
	            { "data": "grade" },
	        ]
	    } );
	    
	   
	} );  */

</script>
    
    
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
          	<!-- logo info -->
			<jsp:include page="/GenTopLeftLogoInfo"></jsp:include>
          	<!-- logo info -->

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
           
			<jsp:include page="/MenuProfileQuickInfo"></jsp:include>

			<!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <jsp:include page="/GenSideMenuBar"></jsp:include>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->           
            <jsp:include page="/MenuFooterButton"></jsp:include>
            <!-- /menu footer buttons -->
            
          </div>
        </div>

        <!-- top navigation -->
        <jsp:include page="/GenFooterNavBar"></jsp:include>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">


            <div class="clearfix"></div>

            <div class="row">
               <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2> IGS User</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
  					<!-- Datatable -->                  
                   	<table id="example" class="table table-striped table-bordered">
						<thead>
							<tr>
									<th>User Id</th>
							<th>Scode</th>
							<th>Category</th>
							<th>Sex</th>
							<th>Old User Id</th>
							<th>Password</th>
							<th>Full Name</th>
							<th>Title</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Designation</th>
							<th>Department</th>
							<th>Origin</th>
							<th>Address 1</th>
							<th>Address 2</th>
							<th>Address 3</th>
							<th>City</th>
							<th>State</th>
							<th>Pin</th>
							<th>Country</th>
							<th>Retltr</th>
							<th>Executive</th>
							<th>Mem 2011</th>
							<th>Jou 2011</th>
							<th>Jlife Time</th>
							<th>Issmge 1013</th>
							<th>Enrlyear</th>
							<th>Through</th>
							<th>Email</th>
							<th>Remarks</th>
							<th>Mobile</th>
							<th>Fax</th>
							<th>Active Status</th>
							<th>Nationality</th>
							<th>Blog</th>
							<th>Attachment 1</th>
							<th>Attachment 2</th>
							<th>Attachment 3</th>
							<th>Supp1 Proof</th>
							<th>Supp2 Proof</th>
							<th>Dob Proof</th>
							<th>Others Proof</th>
							<th>Created By</th>
							<th>Created On</th>
							<th>Modified By</th>
							<th>Modified On</th>
							<th>Upload Folder</th>
							<th>About Me</th>
							<th>Chat Flag</th>
							<th>Chat Visibilty Flag</th>
							<th>Mname</th>
							<th>Dob</th>
							<th>Contact Add1</th>
							<th>Contact Add2</th>
							<th>Contact Add3</th>
							<th>Contact No</th>
							<th>Others </th>
							<th>Through2</th>
							<th>Executive Year</th>
							<th>Approved By</th>
							<th>Mem2011 Year</th>
							<th>Blog Flag</th>
							<th>Email Flag</th>
							<th>Sms Flag</th>
							<th>Jou2011 Year</th>
							<th>Jlife Time Subscription</th>
							<th>Issmge1013 Flag</th>
							<th>Issmge Block Year</th>
							<th>User Name</th>
							<th>Specialization</th>
							<th>Ref No</th>
							<th>Colflg</th>
							<th>Email Group Id</th>
							<th>Online Voting Right Flag</th>
							<th>Close Voting Flag</th>
							<th>Close Date</th>
							<th>Mail Send Flag</th>
							<th>Password Mail Flag</th>
							<th>Temp Generated Password </th>
							<th>User Id</th>
							<th>Scode</th>
							<th>Category</th>
							<th>Sex</th>
							<th>Old User Id</th>
							<th>Password</th>
							<th>Full Name</th>
							<th>Title</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Designation</th>
							<th>Department</th>
							<th>Origin</th>
							<th>Address 1</th>
							<th>Address 2</th>
							<th>Address 3</th>
							<th>City</th>
							<th>State</th>
							<th>Pin</th>
							<th>Country</th>
							<th>Retltr</th>
							<th>Executive</th>
							<th>Mem 2011</th>
							<th>Jou 2011</th>
							<th>Jlife Time</th>
							<th>Issmge 1013</th>
							<th>Enrlyear</th>
							<th>Through</th>
							<th>Email</th>
							<th>Remarks</th>
							<th>Mobile</th>
							<th>Fax</th>
							<th>Active Status</th>
							<th>Nationality</th>
							<th>Blog</th>
							<th>Attachment 1</th>
							<th>Attachment 2</th>
							<th>Attachment 3</th>
							<th>Supp1 Proof</th>
							<th>Supp2 Proof</th>
							<th>Dob Proof</th>
							<th>Others Proof</th>
							<th>Created By</th>
							<th>Created On</th>
							<th>Modified By</th>
							<th>Modified On</th>
							<th>Upload Folder</th>
							<th>About Me</th>
							<th>Chat Flag</th>
							<th>Chat Visibilty Flag</th>
							<th>Mname</th>
							<th>Dob</th>
							<th>Contact Add1</th>
							<th>Contact Add2</th>
							<th>Contact Add3</th>
							<th>Contact No</th>
							<th>Others </th>
							<th>Through2</th>
							<th>Executive Year</th>
							<th>Approved By</th>
							<th>Mem2011 Year</th>
							<th>Blog Flag</th>
							<th>Email Flag</th>
							<th>Sms Flag</th>
							<th>Jou2011 Year</th>
							<th>Jlife Time Subscription</th>
							<th>Issmge1013 Flag</th>
							<th>Issmge Block Year</th>
							<th>User Name</th>
							<th>Specialization</th>
							<th>Ref No</th>
							<th>Colflg</th>
							<th>Email Group Id</th>
							<th>Online Voting Right Flag</th>
							<th>Close Voting Flag</th>
							<th>Close Date</th>
							<th>Mail Send Flag</th>
							<th>Password Mail Flag</th>
							<th>Temp Generated Password </th>
							<th>Action </th>
							</tr>
						</thead>
					</table>
  					<!-- Datatable -->                  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>  
        <!-- /page content -->

        <!-- footer content -->
        
        <jsp:include page="/UnitedGenFooterNavBar"></jsp:include>
        
        <!-- /footer content -->
      </div>
    </div>
    
    				<div id="modal1" class="modal fade">
					  <div class="modal-dialog">
					    <div class="modal-content" >
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title">United Gallery Images</h4>
					      </div>
					      <div id="mbd1" class="modal-body" >
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
					    <div class="modal-content" >
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title">United Gallery Images</h4>
					      </div>
					      <div id="mbd2" class="modal-body" >
					        <p>One fine body&hellip;</p>
					      </div>
					      <div class="modal-footer">
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
    <!-- iCheck -->
    <script src="js/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script src="js/dataTables.buttons.min.js"></script>
    <script src="js/buttons.bootstrap.min.js"></script>
    <script src="js/buttons.flash.min.js"></script>
    <script src="js/buttons.html5.min.js"></script>
    <script src="js/buttons.print.min.js"></script>
    <script src="js/dataTables.fixedHeader.min.js"></script>
    <script src="js/dataTables.keyTable.min.js"></script>
    <script src="js/dataTables.responsive.min.js"></script>
    <script src="js/responsive.bootstrap.js"></script>
    <script src="js/dataTables.scroller.min.js"></script>
    <script src="js/jszip.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script src="js/vfs_fonts.js"></script>
    
    
    
    	<SCRIPT src="js/jquery.min.js"></SCRIPT>
	<!-- Bootstrap -->
	<SCRIPT src="js/bootstrap.min.js"></SCRIPT>
	<!-- FastClick -->
	<SCRIPT src="js/fastclick.js"></SCRIPT>
	<!-- NProgress -->
	<SCRIPT src="js/nprogress.js"></SCRIPT>
	<!-- iCheck -->
	<SCRIPT src="js/icheck.min.js"></SCRIPT>
	<!-- Datatables -->
	<SCRIPT src="js/jquery.dataTables.min.js"></SCRIPT>

	<SCRIPT src="js/dataTables.bootstrap.min.js"></SCRIPT>

	<SCRIPT src="js/dataTables.buttons.min.js"></SCRIPT>

	<SCRIPT src="js/buttons.bootstrap.min.js"></SCRIPT>

	<SCRIPT src="js/buttons.flash.min.js"></SCRIPT>

	<SCRIPT src="js/buttons.html5.min.js"></SCRIPT>

	<SCRIPT src="js/buttons.print.min.js"></SCRIPT>

	<SCRIPT src="js/dataTables.fixedHeader.min.js"></SCRIPT>
	
	<SCRIPT src="js/dataTables.keyTable.min.js"></SCRIPT>

	<SCRIPT src="js/dataTables.responsive.min.js"></SCRIPT>

	<SCRIPT src="js/responsive.bootstrap.js"></SCRIPT>

	<SCRIPT src="js/dataTables.scroller.min.js"></SCRIPT>

	<SCRIPT src="js/jszip.min.js"></SCRIPT>

	<SCRIPT src="js/pdfmake.min.js"></SCRIPT>

	<SCRIPT src="js/vfs_fonts.js"></SCRIPT>
	<!-- Custom Theme Scripts -->
	<SCRIPT src="js/custom.min.js"></SCRIPT>


	<SCRIPT src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></SCRIPT>
    <SCRIPT src="https://cdn.datatables.net/fixedcolumns/3.2.2/js/dataTables.fixedColumns.min.js"></SCRIPT>

	 <script>

		$('#modal1').on('show.bs.modal', function(e) {
				$(this)
				    .addClass('modal-scrollfix')
				    .find('#mbd1')
				    .html('loading...')
				    .load('TopMarqueeAdd', function() {
				      // Use Bootstrap's built-in function to fix scrolling (to no avail)
				      $('#modal1')
				        .removeClass('modal-scrollfix')
				        .modal('handleUpdate');
				    });
		});
		
					
		$('#modal2').on('show.bs.modal', function(e) {
			
		 // var rowid = $(e.relatedTarget).parent().parent().text();
		  	var uid;
		  	var $row = $(e.relatedTarget).closest("tr"),        // Finds the closest row <tr> 
		    $tds = $row.find("td:nth-child(1)"); // Finds the 2nd <td> element
		    //alert($tds.text())
			$.each($tds, function() {                // Visits every single <td> element
			    //console.log($(this).text());         // Prints out the text within the <td>
				uid = $(this).text()
				//alert($(this).text())
			});
		    
		  
				$(this)
				    .addClass('modal-scrollfix')
				    .find('#mbd2')
				    .html('loading...')
				    .load('/UserModify?slider_id='+uid, function() {
				      // Use Bootstrap's built-in function to fix scrolling (to no avail)
				      $('#modal2')
				        .removeClass('modal-scrollfix')
				        .modal('handleUpdate');
				    });
				});
					
					
					</script>


  </body>
</html>