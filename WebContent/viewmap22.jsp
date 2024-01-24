                    
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
   <%
            if (request.getParameter("umsg") != null) {%>
        <script>alert('Request has send to admin ');</script>  
        <%}
        %>
<body>
    <style>  
    
    #dvMap {  
        height: 50%;  
    }  
  
    .button {  
        background-color: #4CAF50;  
        border: none;  
        color: white;  
        padding: 15px 32px;  
        text-align: center;  
        text-decoration: none;  
        display: inline-block;  
        font-size: 16px;  
        margin: 4px 2px;  
        cursor: pointer;  
    }  
  
    .button4 {  
        border-radius: 9px;  
    }  
  
    input[type=text], select {  
        width: 40%;  
        padding: 12px 20px;  
        margin: 10px 0;  
        display: inline-block;  
        border: 1px solid #ccc;  
        border-radius: 4px;  
        box-sizing: border-box;  
    }  
</style>  
  
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLQEIfvCNg1T8FF15pe63XMKhXaupIWg0&libraries=places">  
    </script>  
        <script type="text/javascript">  
            var source, destination;  
            var directionsDisplay;  
            var directionsService = new google.maps.DirectionsService();  
            google.maps.event.addDomListener(window, 'load', function () {  
                new google.maps.places.SearchBox(document.getElementById('txtSource'));  
                new google.maps.places.SearchBox(document.getElementById('txtDestination'));  
                directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });  
            });  
  
            function GetRoute() {  
                var mumbai = new google.maps.LatLng(18.9750, 72.8258);  
                var mapOptions = {  
                    zoom: 7,  
                    center: mumbai  
                };  
                map = new google.maps.Map(document.getElementById('dvMap'), mapOptions);  
                directionsDisplay.setMap(map);  
                directionsDisplay.setPanel(document.getElementById('dvPanel'));  
                 
                source = document.getElementById("txtSource").value;  
                destination = document.getElementById("txtDestination").value;  
  
                var request = {  
                    origin: source,  
                    destination: destination,  
                    travelMode: google.maps.TravelMode.DRIVING  
                };  
                directionsService.route(request, function (response, status) {  
                    if (status == google.maps.DirectionsStatus.OK) {  
                        directionsDisplay.setDirections(response);  
                    }  
                });  
  
                 
                var service = new google.maps.DistanceMatrixService();  
                service.getDistanceMatrix({  
                    origins: [source],  
                    destinations: [destination],  
                    travelMode: google.maps.TravelMode.DRIVING,  
                    unitSystem: google.maps.UnitSystem.METRIC,  
                    avoidHighways: false,  
                    avoidTolls: false  
                }, function (response, status) {  
                    if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {  
                        var distance = response.rows[0].elements[0].distance.text;  
                        var duration = response.rows[0].elements[0].duration.text;  
                        var dvDistance = document.getElementById("dvDistance");  
                        dvDistance.innerHTML = "";  
                        dvDistance.innerHTML += "Distance Is: " + distance + "<br />";  
                        dvDistance.innerHTML += "Duration Is:" + duration;  
                        //alert(dvDistance.innerHTML);  
                    } else {  
                        alert("Your Request For Distance Not Available");  
                    }  
                });  
            }  
        </script>  


    
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
      
      <li><a href="listtour1.jsp">Back</a></li>
     
      
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
      
      <li><a href="listtour1.jsp">Back</a></li>
     
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
             
              <h1 style="color:white">User Registration Details</h1><br>
              <div style="width:1020px;height:700px;overflow: auto">
                  <%
                  
                  String slocation = session.getAttribute("sloca").toString();
                  String elocation = session.getAttribute("loadd").toString();
                  %>
                  <input type="text" id="txtSource" value="<%=slocation%>" />  
                       
                    <input type="text" id="txtDestination" value="<%=elocation%>" />  
                    <br />  
                    <input type="button" value="Show" onclick="GetRoute()" class="button button4" />   
                    <hr /> 
                    <h1><a href="listtours.jsp">NEXT</a></h1>
                    <div id="dvMap">  
                    </div>  
                    <div style=" background-color: white;font-size: 22px;font-family:  monospace;color: red"id="dvPanel">  
                    </div>
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

