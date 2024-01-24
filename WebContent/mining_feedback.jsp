                    
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
       <li><a href="mining_feedback.jsp">Mining Feedback</a></li>
      
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
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
             
              <h1 style="color:white">Mining Feedback</h1><br>
              <div style="width:1020px;height:290px;overflow: auto">
                  <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Username</th>
                        <th style="color:blueviolet;font-size: 20px">Location</th>
                        <th style="color:blueviolet;font-size: 20px">Feedback</th>
                        <th style="color:blueviolet;font-size: 20px">reason</th>
                        <th style="color:blueviolet;font-size: 20px">Ratings </th>
                        <th style="color:blueviolet;font-size: 20px">Interest</th>   
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from userreat");
                                while (rs.next()) {
                                     
            %>
                            
                            <td style="color:black;font-size: 20px"><%=rs.getString("useranme")%></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("location")%></td>  
                           <td style="color:black;font-size: 20px"><%=rs.getString("feed")%></td>  
                            <td style="color:black;font-size: 20px"><%=rs.getString("resion")%></td>
                          
                            <td style="color:black;font-size: 20px"><%=rs.getString("ratings")%></td>
                            <td style="color:brown;font-size: 20px"><%=rs.getString("interest")%></td>
                             
                            
                          
                           
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                    <h1 style="color:white ">Mining ratings </h1>
                    <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Ratings</th>
                        <th style="color:blueviolet;font-size: 20px">Repeated ratings </th>
                       
                    </tr>
                    <tr>
                        <%
                            Connection con1 = null;
                            Statement st1 = null;
                            ResultSet rs1 = null;
                            try {
                               
                                con1 = Dbconnection.getConnection();
                                st1 = con1.createStatement();
                                rs1 = st1.executeQuery("SELECT ratings,COUNT(*) FROM userreat GROUP BY ratings order by ratings desc;");
                                while (rs1.next()) {
                                                 %>
                            
                            <td style="color:black;font-size: 20px"><%=rs1.getString("ratings")%></td>
                            <td style="color:black;font-size: 20px"><%=rs1.getString("COUNT(*)")%></td>  
                           
                                  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                    <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Mining Feedback </h1></center></u>
  
                    <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Feedback</th>
                        <th style="color:blueviolet;font-size: 20px">Repeated feedback </th>
                       
                    </tr>
                    <tr>
                        <%
                            Connection con2 = null;
                            Statement st2 = null;
                            ResultSet rs2 = null;
                            try {
                               
                                con2 = Dbconnection.getConnection();
                                st2 = con2.createStatement();
                                rs2 = st2.executeQuery("SELECT feed,COUNT(*) FROM userreat GROUP BY feed order by feed desc;");
                                while (rs2.next()) {
                                    String  feed=rs2.getString("feed").toUpperCase();
                                                 %>
                            
                            <td style="color:black;font-size: 20px"><%=feed%></td>
                            <td style="color:black;font-size: 20px"><%=rs2.getString("COUNT(*)")%></td>  
                           
                                  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                    <h1 style="color:white ">Mining Location</h1>
                    <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Location</th>
                        <th style="color:blueviolet;font-size: 20px">Repeated User Location </th>
                       
                    </tr>
                    <tr>
                        <%
                            Connection con3 = null;
                            Statement st3 = null;
                            ResultSet rs3 = null;
                            try {
                               
                                con3 = Dbconnection.getConnection();
                                st3 = con3.createStatement();
                                rs3 = st3.executeQuery("SELECT location,COUNT(*) FROM userreat GROUP BY location order by location desc;");
                                while (rs3.next()) {
                                    String  location=rs3.getString("location").toUpperCase();
                                                 %>
                            
                            <td style="color:black;font-size: 20px"><%=location%></td>
                            <td style="color:black;font-size: 20px"><%=rs3.getString("COUNT(*)")%></td>  
                           
                                  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                    </table>
                    <h1 style="color:white ">User point of interest </h1>
                    <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Interest</th>
                        <th style="color:blueviolet;font-size: 20px">Repeated interest </th>
                       
                    </tr>
                    <tr>
                        <%
                            Connection con4 = null;
                            Statement st4 = null;
                            ResultSet rs4 = null;
                            try {
                               
                                con4 = Dbconnection.getConnection();
                                st4 = con4.createStatement();
                                rs4 = st4.executeQuery("SELECT interest,COUNT(*) FROM userreat GROUP BY interest order by interest desc;");
                                while (rs4.next()) {
                                    String  interest=rs4.getString("interest");
                                                 %>
                            
                            <td style="color:black;font-size: 20px"><%=interest%></td>
                            <td style="color:black;font-size: 20px"><%=rs4.getString("COUNT(*)")%></td>  
                           
                                  
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

