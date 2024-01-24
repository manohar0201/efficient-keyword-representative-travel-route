<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta name="Description" content="Information architecture, Web Design, Web Standards." />
<meta name="Keywords" content="your, keywords" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="Distribution" content="Global" />
<meta name="Author" content="Erwin Aligam - ealigam@gmail.com" />
<meta name="Robots" content="index,follow" />
<link rel="stylesheet" href="images/Blue.css" type="text/css" />
<title>BluePigment</title>
</head>
<body>
    <%
            if (request.getParameter("umsg") != null) {%>
        <script>alert('User login succesfully ');</script>  
        <%}
        %>
        
    <style>
        .textbox { 
	background:  #ccc; 
	border: 1px solid #666; 
	box-shadow: 0 0 5px #666 inset; 
	color: #333; 
	font-size: 20px; 
	padding: 7px 10px; 
	width: 200px; 
	outline: none; 
} 


    </style>
<!-- header starts here -->
<div id="header">
  <div id="header-content">
      <center><h1 id="logo-text"><a href="index.html" title="">Systematic Spatial Keyword Perception Suggestive Travel Route Recommendation Algorithm</a></h1></center>
    
      </div>
</div>
<!-- navigation starts here -->
<div id="nav-wrap">
  <div id="nav">
    <ul>
       <li><a href="index.jsp">Home</a></li>
       <li><a href="listtour1.jsp">POI(Interest) </a></li>
       <li><a href="websearc.jsp">search Keywords </a></li>
       <li><a href="respondprice.jsp">Tours details</a></li>
       <li><a href="feedback.jsp">Feedback</a></li>
       <li><a href="userlogin.jsp">Logout</a></li>
      
    </ul>
  </div>
</div>
<!-- content-wrap starts here -->
<div id="content-wrap">
  <div id="content">
    <div id="sidebar" >
      <div class="sep"></div>
      <div class="sidebox">
        
        
      </div>
      <div class="sidebox">
        <h1>Sidebar Menu</h1>
        <ul class="sidemenu">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="listtour1.jsp">POI(Interest) </a></li>
          <li><a href="websearc.jsp">search Keywords </a></li>
          <li><a href="search2.jsp">sEARCH </a></li>
          <li><a href="respondprice.jsp">Tours details</a></li>
          <li><a href="findfriend.jsp">Find friends</a></li>
          <li><a href="viewfriendrequest.jsp">Requested friends</a></li>
          <li><a href="viewfriends.jsp">Friends</a></li>
          <li><a href="recomend.jsp">Recommend path</a></li>
          
          
           <li><a href="feedback.jsp">Feedback</a></li>
           <li><a href="userlogin.jsp">Logout</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                 String uidd = request.getQueryString();
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from recoemnd where id='"+uidd+"' ");
                                while (rs.next()) {
                                     
            %>
            <div><center><img src="viewhareeimg.jsp?id=<%=rs.getString("id")%>" width="300px" height="300px"/></center></div>
            
                           
                            
                          
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
     
  
               
            </form>
              </div>
          </center>

      </div>
      <br />
    </div>
    <!-- content-wrap ends here -->
  </div>
</div>
<!-- footer starts here-->
<div id="footer-wrap">
  <div id="footer-columns">
    </div>
    <!-- footer-columns ends -->
  </div>
    <!-- footer ends-->
</div>
</body>
</html>
