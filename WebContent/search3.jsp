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
      <li><a href="respondprice.jsp">Back</a></li>
      
      
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
      <li><a href="respondprice.jsp">Back</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
            <center> 
            <% 
            String  sourcc=(String)session.getAttribute("foname");
                               String  desst=(String)session.getAttribute("dto");
%>
                <div style="width:1020px;height:700px;overflow: auto">
                 
                  <input type="text" id="txtSource" value="<%=sourcc%>" />  
                       
                    <input type="text" id="txtDestination" value="<%=desst%>" />  
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
         
              
              <br></br>
              <center>
              <div>
                  
                   <table border="1" style="margin-left: 30px;text-align: center">
                  <%
                            Connection con = null;
                            Statement st = null;
                            Statement st1 = null;
                            ResultSet rs = null;
                            ResultSet rs1 = null;
                            
                               
                            try {
                                 String uid = request.getQueryString();
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                st1 = con.createStatement();
                                rs = st.executeQuery("select * from addplaces where fromss='"+sourcc+"' and  tos='"+desst+"' ");
                                while (rs.next()) {
                                    
                                  
                                    
                                    
                
            %>
           
           
                            
                            
                          
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:200px">From</td> <td style="color:white;background-color: brown;font-size: 22px;height: 60px;width:80px"><%=rs.getString("fromss")%></td>
  </tr>
  <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:200px">TO</td> <td style="color:white;background-color: brown;font-size: 22px;height: 60px;width: 200px"><%=rs.getString("tos")%></td>
  </tr>
  <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Days</td> <td style="color:white;background-color: brown;font-size: 22px;height: 60px;width: 200px"><%=rs.getString("sdate")%></td>
  </tr>
   <tr>
    <td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Price</td> <td style="color:white;background-color: brown;font-size: 22px;height: 60px;width:200px"><%=rs.getString("price")%></td>
  </tr>
                    
                   
    <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Place1</td><td style="color:white;background-color: brown;font-size: 22px;height: 60px;width: 200px"><a href="search4.jsp?place=<%=rs.getString("place1")%>" style="color:  white"><%=rs.getString("place1")%></a></td></tr>
    <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Place2</td><td style="color:white;background-color: brown;font-size: 22px;height: 60px"><a href="search4.jsp?place=<%=rs.getString("place2")%>" style="color:  white"><%=rs.getString("place2")%></a></td></tr>
     <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">Place3</td><td style="color:white;background-color: brown;font-size: 22px;height: 60px"><a href="search4.jsp?place=<%=rs.getString("place3")%>" style="color: white"><%=rs.getString("place3")%></a></td></tr>
     <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">place4</td><td style="color:white;background-color: brown;font-size: 22px;height: 60px"><a href="search4.jsp?place=<%=rs.getString("place4")%>" style="color:  white"><%=rs.getString("place4")%></a></td></tr></br>
      <tr><td style="color:BLACK;background-color: grey;font-size: 22px;height: 40px;width:70px">place5</td><td style="color:white;background-color: brown;font-size: 22px;height: 60px"><a href="search4.jsp?place=<%=rs.getString("place5")%>" style="color:  white"><%=rs.getString("place5")%></a></td></tr></br>
                   </tr>
                      
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table><br></br>
               
              </div>
              </center>
                  </div>
         
                  
     
  
               
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
