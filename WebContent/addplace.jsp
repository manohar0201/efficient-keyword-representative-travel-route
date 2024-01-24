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
         <li id="current"><a  style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px"href="index.jsp">Home</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="routee.jsp">Add Place</a></li>
      <li><a style="color:white;font-family: Candara;font-size: 20px"style="color:white;font-family: Candara;font-size: 25px" href="addplace.jsp">Add Route Place</a></li>
      
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
                  <form action="asdplacess" method="post" enctype="multipart/form-data"> 
                     
                      <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >Add Travel Route place </h1></center></u>
  
<label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">Place Name:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="placename" required="" style="margin-left: 45px;" placeholder="Place Name "/><br>
<label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">Description:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="descrip"required="" style="margin-left: 45px;" placeholder="Description "/><br>
 <label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">category(beach,park,temple):</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="cate"required="" style="margin-left: 45px;" placeholder="category "/><br>
<label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">Location:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="locati"required="" style="margin-left: 45px;" placeholder="Location "/><br>
<label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">address:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="map"required="" style="margin-left: 45px;" placeholder="Map "/><br>
<label style="font-size: 25px;margin-left:30px;font-family: Candara;color:  darkorange">Timing:</label> <br><input type="text" class="textbox"  style="height: 32px; width:270px; " name="timing"required="" style="margin-left: 45px;" placeholder="Timing "/><br>


        <label style="font-size: 20px;margin-left:30px;color:  darkorange">Package season :</label> <br><select style="height: 40px; width:265px;color:black "  style="margin-left:25px;" class="textbox"  name="season" required="">
                                <option selected="">Select</option>
                                <option value="summer">Summer</option>
                                <option value="spring">Spring</option>
                                 <option value="autumn">Autumn</option>
                                <option value="winter">winter</option>
                                <br></select><br>
                                   
<label style="font-size: 20px;margin-left:30px;color:  darkorange">upload image:</label> <br><input type="file" class="textbox"  style="height: 32px; width:270px; " name="photo"required =""style="margin-left: 45px;" placeholder="Upload image "/><br><br>
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
