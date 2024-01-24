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
      <li id="current"><a href="index.jsp">Home</a></li>
      <li><a href="addplace.jsp">Add Place</a></li>
      <li><a href="userdetails.jsp">User Details</a></li>
      <li><a href="viewplace.jsp">view Place</a></li>
      <li><a href="userrequestt.jsp">User Request</a></li>
      
      
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
          <li><a href="adminlogin.jsp">Admin Login</a></li>
          <li><a href="userlogin.jsp">User login</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <%
                  
                   String id=request.getQueryString();
                   session.setAttribute("rrid", id);
                  %>
                  <form action="userrespond.jsp" method="post" > 
                      <u><h1>Add place details by Admin</h1><br></u>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Price:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="price" required="" style="margin-left: 45px;" placeholder="Price "/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Hotel Name:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="hotel"required="" style="margin-left: 45px;" placeholder="Hotelanme "/><br>
 <label style="font-size: 20px;margin-left:30px;color:  darkorange">Time schedule:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="timeschu"required="" style="margin-left: 45px;" placeholder="time sched"/><br>

            <input type="submit" value="accept" style="border-radius: 15px;height: 55px;width: 120px;background-color: darkcyan;color: white;font-size: 20px"></input>
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
