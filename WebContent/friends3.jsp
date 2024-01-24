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
       <li><a href="respondprice.jsp">Tours details</a></li>
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
                  <form action="search3.jsp " method="post">
                
  
              <table border="1" style="margin-left: 30px;text-align: center">
                   
  
  

                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                String id=request.getQueryString();
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from userregs where id='"+id+"'");
                                while (rs.next()) {%>
                                
                                <tr>
    <th rowspan="7"><img src="viewimag.jsp?id=<%=rs.getString("id")%>" width="150px" height="175px"/></th>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:200px">Name</td> <td style="color:white;background-color: brown;font-size: 22px;height: 40px"><%=rs.getString("usernmae")%></td>
  </tr>
  <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:200px">E-Mailid</td> <td style="color:white;background-color: brown;font-size: 22px;height: 40px"><%=rs.getString("mailids")%></td>
  </tr>
  <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Mobile</td> <td style="color:white;background-color: brown;font-size: 22px;height: 40px"><%=rs.getString("phone")%></td>
  </tr>
   <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">DOB</td> <td style="color:white;background-color: brown;font-size: 22px;height: 40px;width:70px"><%=rs.getString("dob")%></td>
  </tr>
                    
                   
    <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Location</td><td style="color:white;background-color: brown;font-size: 22px;height: 40px"><%=rs.getString("location")%></td></tr>
    <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Gender</td><td style="color:white;background-color: brown;font-size: 22px;height: 40px"><%=rs.getString("gender")%></td></tr>
     <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Request</td><td style="color:white;background-color: brown;font-size: 22px;height: 40px"><a style="color:blue"href="requestt.jsp?rid=<%=rs.getString("id")%>&reqnmae=<%=rs.getString("usernmae")%>"/>Request</a></td></tr>
                   
                    </tr>
                      
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table><br></br>
                 </center> 
                
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
