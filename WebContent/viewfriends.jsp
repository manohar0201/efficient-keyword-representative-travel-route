                    
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
        


    </style>
     <%
            if (request.getParameter("umsgg") != null) {%>
        <script>alert('Accept friend request ');</script>  
        <%}
        %>
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
    <li id="current"><a href="index.jsp">Home</a></li>
      <li><a href="addplace.jsp">Add Place</a></li>
      <li><a href="userdetails.jsp">User Details</a></li>
      <li><a href="viewplace.jsp">view Place</a></li>
      <li><a href="userrequestt.jsp">User Request</a></li>
      <li><a href="minninkeywordss.jsp">Mining</a></li>
      
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
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="index.jsp">Home</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="listtour1.jsp">POI(Interest) </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="websearc.jsp">search Keywords </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="search2.jsp">Search from TO </a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="respondprice.jsp">Tours details</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="findfriend.jsp">Find friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewfriendrequest.jsp">Requested friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewfriends.jsp">Friends</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="recomend.jsp">Recommend path</a></li>
          <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewsharedplaces.jsp">view shared images</a></li>
          
           <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="feedback.jsp">Feedback</a></li>
           <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="userlogin.jsp">Logout</a></li>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
             
           <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >View all Friends </h1></center></u>
  
              <div style="width:1020px;height:290px;overflow: auto">
                  <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        
                        <th style="color:blueviolet;font-size: 20px">Username</th>
                        <th style="color:blueviolet;font-size: 20px">Profile</th>
                         <th style="color:blueviolet;font-size: 20px">Requested</th>
                        <th style="color:blueviolet;font-size: 20px">Status</th>
                        
                      
                       
                       
                        
                        
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                 String status="Accepted";
                                 String  usernamee=(String)session.getAttribute("uname");
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from frrequest where (restatus='"+status+"' and  requestname='"+usernamee+"') or (restatus='"+status+"' and  username='"+usernamee+"')");
                                while (rs.next()) {
                                     
            %>
                             <td style="color:black;font-size: 20px"><%=rs.getString("username")%></td>
                         <td><img src="viewimag.jsp?id=<%=rs.getString("requestid")%>" width="90px" height="90px"/></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("requestname")%></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("restatus")%></td>  
                          
                             
                            
                          
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                
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

