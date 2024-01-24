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
            if (request.getParameter("uumsgg") != null) {%>
        <script>alert('Admin login succesfully ');</script>  
        <%}
        %>
        <%
            if (request.getParameter("msggg") != null) {%>
        <script>alert('Add place succesfully');</script>  
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
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <form action="recommendd" method="post" enctype="multipart/form-data"> 
                      <u><h1></h1><br></u>
                       <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Recommending Route to Friends</h1></center></u><br></br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">From:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="from" required="" style="margin-left: 45px;" placeholder="Depature "/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">TO:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="to"required="" style="margin-left: 45px;" placeholder="Visiting"/><br>
 


        <label style="font-size: 20px;margin-left:30px;color:  darkorange">Recommend TO :</label> <br><select style="height: 40px; width:265px;color:black "  style="margin-left:25px;" class="textbox"  name="recuser" required="">
                               <%   
                                  
             Connection con= con = Dbconnection.getConnection();;

             Statement st = null;
             ResultSet rs = null;

        String status="Accepted";
                                 String  usernamee=(String)session.getAttribute("uname");
           st=con.createStatement() ;
           rs=st.executeQuery("select * from frrequest where (restatus='"+status+"' and  requestname='"+usernamee+"') or (restatus='"+status+"' and  username='"+usernamee+"')");

                    
           %>
                <%  while(rs.next()){ %>
                <option value="<%=rs.getString("username")%>"><%= rs.getString("username")%></option>


      <%  } %>
                                <br></select><br>
              <label style="font-size: 20px;margin-left:30px;color:  darkorange">Message:</label> <br><input type="text" class="textbox"  style="height: 92px; width:290px; " name="msgg"required="" style="margin-left: 45px;" placeholder="message "/><br>
                     
                      
                      
                 <label style="font-size: 20px;margin-left:30px;color:  darkorange">Place:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place"required =""style="margin-left: 45px;" placeholder="Place "/><br><br>
      
                <label style="font-size: 20px;margin-left:30px;color:  darkorange">Share photos:</label> <br><input type="file" class="textbox"  style="height: 32px; width:270px; " name="photo"required =""style="margin-left: 45px;" placeholder="Upload image "/><br><br>
     
            <input type="submit" value="Recomment" style="border-radius: 15px;height: 55px;width: 120px;background-color: darkcyan;color: white;font-size: 20px"></input>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="add" value="Reset" style="border-radius: 15px;height: 45px;width: 99px;background-color: darkcyan;color: white;font-size: 20px"></input>
  
      
               
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
