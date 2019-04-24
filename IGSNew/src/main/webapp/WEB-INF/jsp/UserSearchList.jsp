<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="org.json.*"%>
<%@ include file="dbConn.jsp" %>
<%	
    String[] cols = { "banner_id","banner_title","banner_category","banner_image","banner_status", "creation_date","created_by","last_updation_date","last_updated_by"};
    String table = " united_gallery_master " ;
    
    JSONObject result = new JSONObject();
    JSONArray array = new JSONArray();
    int amount = 10;
    int start = 0;
    int echo = 0;
    int col = 0;
  
    String banner_id = "";
    String banner_title = "";
    String banner_category = "";
    String banner_image = "";
    String banner_status = "";  
    String creation_date = "";
    String created_by = "";
    String last_updation_date = "";
    String last_updated_by = "";
   
    String dir = "asc";
    String sStart = request.getParameter("start");
    System.out.println("sStart" + request.getParameter("start"));

    String sAmount = request.getParameter("length");
    
    System.out.println("iDisplayLength- " + request.getParameter("length"));
    
    String sEcho = request.getParameter("sEcho");
    
    System.out.println("sEcho- " + sEcho);

    String sCol = request.getParameter("order[0][column]");
    
    System.out.println("iSortCol_0- " + sCol);

    String sdir = request.getParameter("order[0][dir]");
    
    System.out.println("sSortDir_0- " + sdir);

    System.out.println("sSearch_000 : "+ request.getParameter("search[value]"));
    
    Enumeration en = request.getParameterNames();
    
    //while(en.hasMoreElements())
    	//System.out.println(en.nextElement());
    
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	banner_id = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	banner_title = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	banner_category = request.getParameter("sSearch_2");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	banner_image = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	banner_status = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	creation_date = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	created_by = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	last_updation_date = request.getParameter("search[value]");
    if(request.getParameter("search[value]")!=null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null"))
    	last_updated_by = request.getParameter("search[value]");
       
    List<String> sArray = new ArrayList<String>();
    if (!banner_id.equals("") && !banner_id.equals("1") && !banner_id.equals("null")) {
        String sbanner_id = " banner_id like '%" + banner_id + "%'";
        sArray.add(sbanner_id);
        //or combine the above two steps as:
        //sArray.add(" category_name like '%" + category_name + "%'");
        //the same as followings
    }
    if (banner_title !=null  && !banner_title.equals("") && !banner_title.equals("null")) {
        String sbanner_title = " banner_title like '%" + banner_title + "%'";
        sArray.add(sbanner_title);
    }
    if (banner_category !=null  && !banner_category.equals("") && !banner_category.equals("null")) {
        String sbanner_category = " banner_category like '%" + banner_category + "%'";
        sArray.add(sbanner_category);
    }
    if (banner_image !=null  && !banner_image.equals("") && !banner_image.equals("null")) {
        String sbanner_image = " banner_image like '%" + banner_image + "%'";
        sArray.add(sbanner_image);
    }
    if (banner_status !=null  && !banner_status.equals("") && !banner_status.equals("null")) {
        String sbanner_status = " banner_status like '%" + banner_status + "%'";
        sArray.add(sbanner_status);
    }
    if (creation_date !=null  && !creation_date.equals("") && !creation_date.equals("null")) {
        String screation_date = " creation_date like '%" + creation_date + "%'";
        sArray.add(screation_date);
    }
    if (created_by !=null  && !created_by.equals("") && !created_by.equals("null")) {
        String screated_by = " created_by like '%" + created_by + "%'";
        sArray.add(screated_by);
    }
    if (last_updation_date !=null  && !last_updation_date.equals("") && !last_updation_date.equals("null")) {
        String slast_updation_date = " last_updation_date like '%" + last_updation_date + "%'";
        sArray.add(slast_updation_date);
    }
    if (last_updated_by !=null  && !last_updated_by.equals("") && !last_updated_by.equals("null")) {
        String slast_updated_by = " last_updated_by like '%" + last_updated_by + "%'";
        sArray.add(slast_updated_by);
    }
         
    String individualSearch = "";
    if(sArray.size()==1){
        individualSearch = sArray.get(0);
    }else if(sArray.size()>1){
        for(int i=0;i<sArray.size()-1;i++){
            individualSearch += sArray.get(i)+ " and ";
        }
        individualSearch += sArray.get(sArray.size()-1);
    }
     
    if (sStart != null && !sStart.equals("") && !sStart.equals("null") ) {
        start = Integer.parseInt(sStart);
        if (start < 0)
            start = 0;
    }
    System.out.println("sAmount " +sAmount);
    if (sAmount != null && !sAmount.equals("") && !sAmount.equals("null")) {
        amount = Integer.parseInt(sAmount);
        if (amount < 10 || amount > 100)
            amount = 10;
    }
    if (sEcho != null && !sEcho.equals("") && !sEcho.equals("null")) {
        echo = Integer.parseInt(sEcho);
    }
    if (sCol != null && !sCol.equals("") && !sCol.equals("null")) {
        col = Integer.parseInt(sCol);
        if (col < 0 || col > 5)
            col = 0;
    }
    if (sdir != null && !sdir.equals("") && !sdir.equals("null")) {
        if (!sdir.equals("asc"))
            dir = "desc";
    }
    String colName = cols[col];
    int total = 0;
 	
    try {
        String sql = "SELECT count(*) cnt FROM "+table;
        
        PreparedStatement ps = con.prepareStatement(sql);
        System.out.println("SLQ1 - " + sql);
        ResultSet rs = ps.executeQuery();
        if(rs.next()){
            total = rs.getInt("cnt");
 
        }
    }catch(Exception e)  	{  		System.out.println(e);    	e.printStackTrace();  	}   	finally	{	/* if(con!=null)			con.close(); */	}
    int totalAfterFilter = total;
    //result.put("sEcho",echo);
 
    try {
        String searchSQL = "";
        String sql = "SELECT * FROM "+table;
        String searchTerm = "";
        if (request.getParameter("search[value]") != null && !request.getParameter("search[value]").equals("") && !request.getParameter("search[value]").equals("null")) 
        searchTerm = request.getParameter("search[value]");
         String globeSearch =  " where (banner_id like '%"+searchTerm+"%'"
                                + " or banner_title like '%"+searchTerm+"%'"
                                + " or banner_category like '%"+searchTerm+"%'"
                                + " or banner_image like '%"+searchTerm+"%'"
                                + " or banner_status like '%"+searchTerm+"%'"
						        // + " or creation_date like '%"+searchTerm+"%'"
						         + " or created_by like '%"+searchTerm+"%'"
						        // + " or last_updation_date like '%"+searchTerm+"%'"
						         + " or last_updated_by like '%"+searchTerm+"%')";

         if(searchTerm!=""&&individualSearch!=""){
            searchSQL = globeSearch + ""; //" and " + individualSearch;
        }
        else if(individualSearch!=""){
            searchSQL = " where " + individualSearch;
        }else if(searchTerm!=""){
            searchSQL=globeSearch;
        }
        sql += searchSQL;
        sql += " order by " + colName + " " + dir;
        sql += " limit " + start + ", " + amount; 
 
        System.out.println("sql: "+ sql);
        
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            JSONArray ja = new JSONArray();
            //ja.put(rs.getString("id"));
            ja.put(rs.getString("banner_id"));
            ja.put(rs.getString("banner_title"));
            ja.put(rs.getString("banner_category"));
            ja.put(rs.getString("banner_image"));
            ja.put(rs.getString("banner_status"));
            ja.put(rs.getString("creation_date"));
            ja.put(rs.getString("created_by"));
            ja.put(rs.getString("last_updation_date"));
            ja.put(rs.getString("last_updated_by"));
            array.put(ja);
        }
        String sql2 = "SELECT count(*) FROM "+table;
        if (searchTerm != "") {
            sql2 += searchSQL;
            PreparedStatement ps2 = con.prepareStatement(sql2);
            ResultSet rs2 = ps2.executeQuery();
            if (rs2.next()) {
                totalAfterFilter = rs2.getInt("count(*)");
            }
        }
        result.put("iTotalRecords", total);
        result.put("iTotalDisplayRecords", totalAfterFilter);
        result.put("aaData", array);
        response.setContentType("application/json");
        response.setHeader("Cache-Control", "no-store");
        out.print(result);
        con.close();
    } catch(Exception e)  	{  		System.out.println(e);    	e.printStackTrace();  	}   	finally	{		if(con!=null)			con.close();	}
%>