                    
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
             
             <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Shared Location  and Images By friends </h1></center></u>
  
              <div style="width:1020px;height:290px;overflow: auto">
                  <table border="1" style="margin-left: 1px;text-align: center;width: 200px;height: 200px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Shared Images</th>
                        <th style="color:blueviolet;font-size: 20px">Depature</th>
                        <th style="color:blueviolet;font-size: 20px">Visiting</th>
                        <th style="color:blueviolet;font-size: 20px">User</th>
                        <th style="color:blueviolet;font-size: 20px">Recommend</th>
                       
                        
                         
                        <th style="color:blueviolet;font-size: 20px">Message</th>
                        
                       
                       
                        
                        
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from recoemnd");
                                while (rs.next()) {
                                     
            %>
                            <td><img src="viewhareeimg.jsp?id=<%=rs.getString("id")%>" width="150px" height="150px"/></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("froms")%></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("toos")%></td>  
                           <td style="color:black;font-size: 20px"><%=rs.getString("user")%></td>  
                            <td style="color:black;font-size: 20px"><%=rs.getString("recoment")%></td>
                          
                            <td style="color:black;font-size: 20px"><textarea style="width: 200px;height: 100px"><%=rs.getString("msgg")%></textarea></td>
                             
                          
                           
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

