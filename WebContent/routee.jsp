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
        <script>alert('upload succesfully ');</script>  
        <%}
        %>
        <%
            if (request.getParameter("uumsgg") != null) {%>
        <script>alert('Not uploaded');</script>  
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
              <br></br>
              <div>
                  <form action="caction.jsp" method="post" > 
                     
                      <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Add place </h1></center></u>
  
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Depature:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="from" required="" style="margin-left: 45px;" placeholder="From "/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Visiting:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="tos"required="" style="margin-left: 45px;" placeholder="TO "/><br>
 <label style="font-size: 20px;margin-left:30px;color:  darkorange">place1:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place1"required="" style="margin-left: 45px;" placeholder="Place1"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Place2:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place2"required="" style="margin-left: 45px;" placeholder="Place2"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Place3:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place3"required="" style="margin-left: 45px;" placeholder="Place3"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Place4:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place4"required="" style="margin-left: 45px;" placeholder="Place4"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Place5:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="place5"required="" style="margin-left: 45px;" placeholder="Place5"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Days:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="sdate"required="" style="margin-left: 45px;" placeholder="sdate"/><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">price:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="price"required="" style="margin-left: 45px;" placeholder="price"/><br>

                                
               <input type="hidden" value="6" name="saction" />                    
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
