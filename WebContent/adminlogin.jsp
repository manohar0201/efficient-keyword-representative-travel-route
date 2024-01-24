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
            if (request.getParameter("umsgg") != null) {%>
        <script>alert('check Usrenmae and password ');</script>  
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
      <li><a href="adminlogin.jsp">Admin Login</a></li>
      
      
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
          
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <br></br>
              <div>
                  <form action="caction.jsp" name="ulogin" method="post" onsubmit="return validation()"> 
                      <u><h1>Admin Login</h1><br></u>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Username:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="username"required style="margin-left: 45px;" placeholder="Username "/><br><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Password:</label> <br><input type="password" class="textbox"  style="height: 32px; width:270px; " name="Password"required style="margin-left: 45px;" placeholder="Password "/><br><br>
            
            <input type="submit" value="Login" style="border-radius: 15px;height: 55px;width: 99px;background-color: darkcyan;color: white;font-size: 20px"></input>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" value="Reset" style="border-radius: 15px;height: 55px;width: 99px;background-color: darkcyan;color: white;font-size: 20px"></input>
  <input type="hidden" value="3" name="saction" />
      
               
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
