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
      
      <li><a href="userlogin.jsp">User login</a></li>
      <li><a href="userreg.jsp">User Registration</a></li>
      
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
                  <form action="caction.jsp" name="ulogin" method="post" onsubmit="return validation()"> 
                      <center><u><h1 style="margin-left: 50px;font-size: 40px;font-family: Colonna MT;color:  brown" >User Feedbacks </h1></center></u><br></br>
  
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Feedback :</label> <br><select style="height: 40px; width:265px;color:black "  style="margin-left:25px;" class="textbox"  name="feed" required="">
                                <option selected="good">Good</option>
                                <option value="Bad ">Bad</option>
                                <option value="Medium">Medium</option><br></select><br>
<label style="font-size: 20px;margin-left:30px;color:  darkorange">Reason:</label> <br><input type="text" class="textbox"  style="height: 52px; width:470px; " name="resion"required style="margin-left: 45px;" placeholder="Feedback"/><br><br>
 
  <label style="font-size: 20px;margin-left:30px;color:  darkorange">Ratings :</label> <br><select style="height: 40px; width:265px;color:black "  style="margin-left:25px;" class="textbox"  name="rating" required="">
                                <option selected="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <br>
      
      </select><br> 
                                    
<label style="font-size: 20px;margin-left:30px;color:  darkorange">User Interest to visit:</label> <br><input type="text" class="textbox"  style="height: 32px; width:330px; " name="Userinter"required style="margin-left: 45px;" placeholder="User interest place "/><br><br>
           
            <input type="submit" value="submit" style="border-radius: 15px;height: 55px;width: 99px;background-color: darkcyan;color: white;font-size: 20px"></input>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="reset" value="Reset" style="border-radius: 15px;height: 55px;width: 99px;background-color: darkcyan;color: white;font-size: 20px"></input>
  <input type="hidden" value="4" name="saction" />
      
               
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
