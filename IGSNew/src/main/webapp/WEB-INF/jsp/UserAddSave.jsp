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
	String banner_title = mrequest.getParameter("banner_title");	String banner_location = mrequest.getParameter("banner_location");	String banner_category = mrequest.getParameter("banner_category");	String banner_description = mrequest.getParameter("banner_description");	String banner_image = mrequest.getFilesystemName("banner_image");	String banner_tooltip = mrequest.getParameter("banner_tooltip");	String banner_status = mrequest.getParameter("banner_status");	String userId = "";
	if(session.getAttribute("userId")!=null)
			userId = session.getAttribute("userId").toString();
	String unitedGalleryAddQuery = "INSERT INTO united_gallery_master (banner_title , banner_location , banner_category, banner_description, banner_image, banner_tooltip, banner_status , CREATED_BY, CREATION_DATE, LAST_UPDATED_BY, LAST_UPDATION_DATE) VALUES (?, ?, ?, ?,?, ?, ?,'"+userId+"', curdate(), '"+userId+"', curdate())";	
	try	{	pstmt = con.prepareStatement(unitedGalleryAddQuery);	pstmt.setString(1, banner_title);	pstmt.setString(2, banner_location);	pstmt.setString(3, banner_category);	pstmt.setString(4, banner_description);	pstmt.setString(5, banner_image);	pstmt.setString(6, banner_tooltip);	pstmt.setString(7, banner_status);		pstmt.executeUpdate();	successFlag = true;	}	catch(Exception e)	{		System.out.println(e);		successFlag=false;	}	finally	{		if(pstmt!=null)			pstmt.close();		if(stmt!=null)			pstmt.close();		if(con!=null)			con.close();			}		if(successFlag)	{		%>		<script>		alert("Data saved successfully.");		window.parent.location.href="UnitedGallery.jsp";		</script>		<%	}	else	{		%>		<script>		alert("Data saved failed.");		</script>		<%	}%>                 