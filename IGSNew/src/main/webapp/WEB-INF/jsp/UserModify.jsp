<%@ include file="dbConn.jsp"%>
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