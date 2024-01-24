                    
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
<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #description {
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
      }

      #infowindow-content .title {
        font-weight: bold;
      }

      #infowindow-content {
        display: none;
      }

      #map #infowindow-content {
        display: inline;
      }

      .pac-card {
        margin: 10px 10px 0 0;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
        background-color: #fff;
        font-family: Roboto;
      }

      #pac-container {
        padding-bottom: 12px;
        margin-right: 12px;
      }

      .pac-controls {
        display: inline-block;
        padding: 5px 11px;
      }

      .pac-controls label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

      #pac-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 400px;
      }

      #pac-input:focus {
        border-color: #4d90fe;
      }

      #title {
        color: #fff;
        background-color: #4d90fe;
        font-size: 25px;
        font-weight: 500;
        padding: 6px 12px;
      }
      #target {
        width: 345px;
      }
    </style>
</head>
<body>
    
    <script>
      // This example adds a search box to a map, using the Google Place Autocomplete
      // feature. People can enter geographical searches. The search box will return a
      // pick list containing a mix of places and predicted search terms.

      // This example requires the Places library. Include the libraries=places
      // parameter when you first load the API. For example:
      // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

      function initAutocomplete() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -33.8688, lng: 151.2195},
          zoom: 13,
          mapTypeId: 'roadmap'
        });

        // Create the search box and link it to the UI element.
        var input = document.getElementById('pac-input');
        var searchBox = new google.maps.places.SearchBox(input);
        map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        // Bias the SearchBox results towards current map's viewport.
        map.addListener('bounds_changed', function() {
          searchBox.setBounds(map.getBounds());
        });

        var markers = [];
        // Listen for the event fired when the user selects a prediction and retrieve
        // more details for that place.
        searchBox.addListener('places_changed', function() {
          var places = searchBox.getPlaces();

          if (places.length == 0) {
            return;
          }

          // Clear out the old markers.
          markers.forEach(function(marker) {
            marker.setMap(null);
          });
          markers = [];

          // For each place, get the icon, name and location.
          var bounds = new google.maps.LatLngBounds();
          places.forEach(function(place) {
            if (!place.geometry) {
              console.log("Returned place contains no geometry");
              return;
            }
            var icon = {
              url: place.icon,
              size: new google.maps.Size(71, 71),
              origin: new google.maps.Point(0, 0),
              anchor: new google.maps.Point(17, 34),
              scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
              map: map,
              icon: icon,
              title: place.name,
              position: place.geometry.location
            }));

            if (place.geometry.viewport) {
              // Only geocodes have viewport.
              bounds.union(place.geometry.viewport);
            } else {
              bounds.extend(place.geometry.location);
            }
          });
          map.fitBounds(bounds);
        });
      }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDLQEIfvCNg1T8FF15pe63XMKhXaupIWg0&libraries=places&callback=initAutocomplete"
         async defer></script>
 
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
     <li><a href="index.jsp">Home</a></li>
          <li><a href="viewplace.jsp">Back</a></li>
      
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
          <li><a href="viewplace.jsp">Back</a></li>
         
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
           <div style="width:1100px;height:800px;overflow: auto;">
               
       <div style="width:600px;height:700px;overflow: auto;float: left;">
           <br>
           
               <%
                          String location =request.getQueryString();
                          
                              
                            Connection con1 = null;
                            Statement st1 = null;
                            ResultSet rs1 = null;
                        
                                try {  
                                con1 = Dbconnection.getConnection();
                                st1 = con1.createStatement();
                                rs1 = st1.executeQuery("select * from addplace where id='"+location+"'  ");
                              String adress;
                                if(rs1.next()) {
                                   
                                    String lid =rs1.getString("id");
                                    String loc =rs1.getString("mapdir");
                                    
                                                                                                  
                                       
                                       

                         %>                                          
                               
    
          
             
            <input id="pac-input"  type="text" placeholder="Search Box"value="<%=loc%>" >
    <div id="map"></div>
              <%}
                                                               
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
           </div>
           <div style="width:500px;height:700px;overflow: auto;float: right;">
               <h1 style="color:white">Place Details</h1>
               <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                        
                                try {  
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from addplace where id='"+location+"'  ");
                              String adress;
                                if(rs.next()) {
                                   
                                    String lid =rs.getString("id");
                                    String loc =rs.getString("location");
                                    String placename =rs.getString("placename");
                                    String category =rs.getString("category");
                                    String locationn =rs.getString("location");
                                    String season =rs.getString("season");
                                    String descrip =rs.getString("descrip");
                                     String rating =rs.getString("prati");
                                    
                                                                                                       
                                       
                                       

                         %>                                          
                         <br><br> 
                                     <center><img  style="width:400px;height: 300px" src="viewplacess.jsp?id=<%=rs.getString("id")%>" />  </center> 
                                     <h1 style="color:black;">rating:</h1>    <h1> <%=rating%></h1>
                                     <h1 style="color:black;">Place Name:</h1>    <h1> <%=placename%></h1>
                                     
                                      <h1 style="color:black;">Category:</h1>    <h1> <%=category%></h1>
                                      <h1 style="color:black;">Location:</h1>    <h1> <%=locationn%></h1>
                                      <h1 style="color:black;">season:</h1>    <h1> <%=season%></h1>
                                      <h1 style="color:black;">Description:</h1>    <h1> <%=descrip%></h1>
                                     
                                     
                                     <%}
                                                               
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
           </div>
           
          
          </div>

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

