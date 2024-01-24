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
              
              <br></br>
              <div style="overflow:auto">
                  <h1>Tourist Details </h1>
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
                                rs = st.executeQuery("select * from reloca where id='"+uid+"' ");
                                while (rs.next()) {
                                    
                                   String id=rs.getString("loid");
                                    
                                    
                                      rs1 = st1.executeQuery("select * from addplace  where id='" + id + "' ");
            if(rs1.next()){
               
                
            %>
           
            
                            <h1  style="font-size: 30px;color:  black" >Price:</h1> <h1  style="font-size: 30px;color:  #ffffff" ><%=rs.getString("price")%></h1> 
                            <h1  style="font-size: 30px;color:  black" >Hotel Name:</h1> <h1  style="font-size: 30px;color: #ffffff" ><%=rs.getString("hotelname")%></h1> 
                            <h1  style="font-size: 30px;color:  black" >Time schedule:</h1> <h1  style="font-size: 30px;color: #ffffff" ><%=rs.getString("timeschedul")%></h1> 
                            <h1  style="font-size: 30px;color:  black" >Visiting Place:</h1> <h1  style="font-size: 30px;color: white" ><%=rs1.getString("visia")%></h1> 
                            <h1  style="font-size: 30px;color: white" ><%=rs1.getString("placename")%></h1>
                           
                               
                         </CENTER> 
                           
                  
                    <%}}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
     
  
               
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
