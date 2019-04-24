<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>IGS Admin Panel</title>

    <!-- bootstrap-wysiwyg -->
    <link href="css/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="css/select2.min.css" rel="stylesheet">


    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="css/green.css" rel="stylesheet">
    
        <!-- Switchery -->
    <link href="css/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="css/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="css/daterangepicker.css" rel="stylesheet">
    
    
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
	    $('#example').append('<caption style="caption-side: top"><button type="button" class="btn btn-success btn-xs" onclick="window.location.href=\'MainPanelNewsForm\';">Add News</button></caption>');

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
	      "ajax": "MainPanelNewsSearchList",
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
	  		alert($(this).text());
		  	var $row = $(this).closest("tr"),        // Finds the closest row <tr> 
		    $tds = $row.find("td:nth-child(1)"); // Finds the 2nd <td> element
		    alert($row.text());
			$.each($tds, function() {                // Visits every single <td> element			           // Prints out the text within the <td>
				alert($(this).text());
				window.location.href="MainPanelNewsModifyForm?newsId="+$(this).text();
			});
	  	});
	} );





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
        <jsp:include page="/GenTopNavBar"></jsp:include>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">


            <div class="clearfix"></div>

            <div class="row">
               <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Category Master</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                  
                  Main Content
  					            
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        
        <jsp:include page="GenFooterNavBar"></jsp:include>
        
        <!-- /footer content -->
      </div>
    </div>
    
    				<div id="modal1" class="modal fade">
					  <div class="modal-dialog">
					    <div class="modal-content" >
					      <div class="modal-header">
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					        <h4 class="modal-title">Main Panel News</h4>
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
					        <h4 class="modal-title">Modal title2</h4>
					      </div>
					      <div id="mbd2" class="modal-body" >
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
	
	    <!-- bootstrap-wysiwyg -->
    <script src="js/bootstrap-wysiwyg.min.js"></script>
    <script src="js/jquery.hotkeys.js"></script>
    <script src="js/prettify.js"></script>
	

<!-- Parsley -->
    <script src="js/parsley.min.js"></script>

	<SCRIPT src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></SCRIPT>
    <SCRIPT src="https://cdn.datatables.net/fixedcolumns/3.2.2/js/dataTables.fixedColumns.min.js"></SCRIPT>

	 <script>

		$('#modal1').on('show.bs.modal', function(e) {
				$(this)
				    .addClass('modal-scrollfix')
				    .find('#mbd1')
				    .html('loading...')
				    .load('MainPanelNewsForm', function() {
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

			$.each($tds, function() {                // Visits every single <td> element
			    //console.log($(this).text());         // Prints out the text within the <td>
				uid = $(this).text()
				//alert($(this).text())
			});
		    
		  
				$(this)
				    .addClass('modal-scrollfix')
				    .find('#mbd2')
				    .html('loading...')
				    .load('CategoryModify?uid='+uid, function() {
				      // Use Bootstrap's built-in function to fix scrolling (to no avail)
				      $('#modal2')
				        .removeClass('modal-scrollfix')
				        .modal('handleUpdate');
				    });
				});
					
					
					</script>


  </body>
</html>