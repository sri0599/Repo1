<%@ include file="dbConn.jsp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.io.*" %>
<%
	Statement stmt = null;
	ResultSet rs =  null;
	PreparedStatement pstmt = null;
	boolean successFlag = true;
	stmt = con.createStatement();
	String filePath = application.getRealPath("/upload/");
	
	MultipartRequest mrequest =new MultipartRequest(request, filePath, 100*1024 * 1024,new com.oreilly.servlet.multipart.DefaultFileRenamePolicy());
	String banner_title = mrequest.getParameter("banner_title");
	if(session.getAttribute("userId")!=null)
			userId = session.getAttribute("userId").toString();
	String unitedGalleryAddQuery = "INSERT INTO united_gallery_master (banner_title , banner_location , banner_category, banner_description, banner_image, banner_tooltip, banner_status , CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATION_DATE) VALUES (?, ?, ?, ?,?, ?, ?,'"+userId+"', curdate(), '"+userId+"', curdate())";	
	try