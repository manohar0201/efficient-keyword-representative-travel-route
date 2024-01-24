                    
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
         <li id="current"><a  style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px"href="index.jsp">Home</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="routee.jsp">Add Place</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="addplace.jsp">Add  Route Place</a></li>
      
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="userdetails.jsp">User Details</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="fromtoplaces.jsp">View From TO Places</a></li>
     
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="viewplace.jsp">view Place</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="userrequestt.jsp">User Request</a></li>
       
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="minninkeywordss.jsp">Mining</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="mining_feedback.jsp">Mining Feedback</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="searchkeyfrom.jsp">search Key</a></li>
       <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="Recommendfriends.jsp">Recommend Friends</a></li>
        <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="sharedimages.jsp">Share Images</a></li>
       
          
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
             
             <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Mining Key words </h1></center></u>
  
              <div style="width:1020px;height:290px;overflow: auto">
                  <h1 style="color:white">Repeated USer</h1>
                  
                  <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                       
                       
                        
                         
                        <th style="color:blueviolet;font-size: 20px">Location</th>
                        <th style="color:blueviolet;font-size: 20px">count</th>
                        
                             
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("SELECT username,COUNT(*) FROM reloca GROUP BY username order by username desc ");
                                while (rs.next()) {
                                     
            %>
                           
                          
                            <td style="color:black;font-size: 20px"><%=rs.getString("username")%></td>
                            
                            <td style="color:black;font-size: 20px"><%=rs.getString("count(*)")%></td>
                            
                            
                          
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                <h1 style="color:white">User search Key</h1><br>
                    <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                       
                       
                        
                         
                        <th style="color:blueviolet;font-size: 20px">Location</th>
                        <th style="color:blueviolet;font-size: 20px">count</th>
                        
                             
                    </tr>
                    <tr>
                        <%
                            Connection con1 = null;
                            Statement st1 = null;
                            ResultSet rs1 = null;
                            try {
                                
                                con1 = Dbconnection.getConnection();
                                st1 = con.createStatement();
                                rs1 = st1.executeQuery("SELECT userskey,COUNT(*) FROM userkey GROUP BY userskey order by userskey desc ");
                                while (rs1.next()) {
                                     
            %>
                           
                          
                            <td style="color:black;font-size: 20px"><%=rs1.getString("userskey")%></td>
                            
                            <td style="color:black;font-size: 20px"><%=rs1.getString("count(*)")%></td>
                            
                            
                          
                           
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

