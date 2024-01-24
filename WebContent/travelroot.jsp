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
        <h1>Sidebar Menu</h1>
        <ul class="sidemenu">
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
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <form action="addplacess" method="post" enctype="multipart/form-data"> 
                      <u><h1>Add place details by Admin</h1><br></u>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">From:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="from" required="" style="margin-left: 45px;" placeholder="From "/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">TO:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="to"required="" style="margin-left: 45px;" placeholder="TO"/><br>
 <label style="font-size: 20px;margin-left:30px;color:  darkorange">Route1:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="route1"required="" style="margin-left: 45px;" placeholder="route1"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Route2:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="route2"required="" style="margin-left: 45px;" placeholder="route2"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Route3:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="route3"required="" style="margin-left: 45px;" placeholder="route3"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Route4:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="route4"required="" style="margin-left: 45px;" placeholder="route4"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Route5:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="route5"required="" style="margin-left: 45px;" placeholder="route5"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Starting date:</label> <br><input type="date" class="textbox"  style="height: 32px; width:270px; " name="sdate"required="" style="margin-left: 45px;" placeholder="startingdate"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Ending Date:</label> <br><input type="date" class="textbox"  style="height: 32px; width:270px; " name="edate"required="" style="margin-left: 45px;" placeholder="endingdate"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Price:</label> <br><input type="date" class="textbox"  style="height: 32px; width:270px; " name="price"required="" style="margin-left: 45px;" placeholder="price"/><br>

       
                                   
            <input type="submit" value="Add Place" style="border-radius: 15px;height: 55px;width: 120px;background-color: darkcyan;color: white;font-size: 20px"></input>
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
