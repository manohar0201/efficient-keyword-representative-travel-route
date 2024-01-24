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
        <h1 style="color: black;font-family: Colonna MT;font-size: 35px">Sidebar Menu</h1>
        <ul class="sidemenu">
           <li><a style="color:white;font-family: Candara;font-size: 20px"href="index.jsp">Home</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 20px"href="listtour1.jsp">POI(Interest) </a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"href="websearc.jsp">search Keywords </a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"href="respondprice.jsp">Tours details</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"href="feedback.jsp">Feedback</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px" href="userlogin.jsp">Logout</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <form action="search3.jsp " method="post">
                 <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >View Friends</h1></center></u>
  
              <table border="1" style="margin-left: 30px;text-align: center">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">User</th>
                        <th style="color:blueviolet;font-size: 20px">Name</th>
                       
                        <th style="color:blueviolet;font-size: 20px">Status</th>
                        <th style="color:blueviolet;font-size: 20px">view more</th>
                        
                        
                        
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                String usernames=request.getParameter("uname");
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from userregs where usernmae='"+usernames+"'");
                                while (rs.next()) {%>
                      <td><img src="viewimag.jsp?id=<%=rs.getString("id")%>" width="70px" height="50px"/></td>
                            <td style="color:black;font-size: 15px"><%=rs.getString("usernmae")%></td>  
                            <td style="color:black;font-size: 15px"><%=rs.getString("request")%></td>
                           <td style="color:black;font-size: 15px"><a href="friends3.jsp?<%=rs.getString("id")%>" style="color:  lightcoral;font-size: 20px">View details</a></td>
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table>
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
