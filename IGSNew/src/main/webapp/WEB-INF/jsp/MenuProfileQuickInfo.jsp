           <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>
                Welcome,
                </span>
                <h2>
                <%
                String userName = "User: ";
            	if(session.getAttribute("userName")!=null)
            	{
        			userName = session.getAttribute("userName").toString();
        			
            	}
            	out.println(userName);
                %>
                </h2>
              </div>
            </div>            
            <!-- /menu profile quick info -->
