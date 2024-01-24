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
      
      <li><a href="websearc.jsp">Back</a></li>
      
      
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
      
      <li><a href="websearc.jsp">Back</a></li>
          
        </ul>
      </div>
      
      
          </div>
    <div id="main">
      
      <div class="box"> <a name="SampleTags"></a>
          
          <center>
              <%
              
%>
             
              <h1 style="color:white">View all places</h1><br>
              <div style="width:1020px;height:290px;overflow: auto">
                  <table border="1" style="margin-left: 1px;text-align: center;width: 300px;height: 300px;">
                    <tr >
                        <th style="color:blueviolet;font-size: 20px">Place name</th>
                        <th style="color:blueviolet;font-size: 20px">Description</th>
                        <th style="color:blueviolet;font-size: 20px">Category</th>
                        <th style="color:blueviolet;font-size: 20px">Location</th>
                        <th style="color:blueviolet;font-size: 20px">season</th>
                       
                        
                         
                        <th style="color:blueviolet;font-size: 20px">view maP</th>
                        
                       
                       
                        
                        
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                             
                            Statement st1 = null;
                            ResultSet rs = null;
                            try {
                                
                                String  place=request.getParameter("place");
                                
                                System.out.println("***************"+place);
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                
                                rs = st.executeQuery("select * from addplace where placename like  '%"+place+"%' ");
                                while (rs.next()) {
                                    String loid=rs.getString("id");
                                    
                                    Integer rr = null;
              Connection con1 = Dbconnection.getConnection();
            Statement st2 = con1.createStatement();
            ResultSet rs2 = st2.executeQuery("select * from addplace  where id='" + loid + "'");
            while (rs2.next()) {
                rr = rs2.getInt("prati");
                System.out.println("*****"+rr);
            }            
            int a = rr+1;
           
            System.out.println("here added " + a);
            int up = st2.executeUpdate("update addplace set prati ='" + a + "' where id = '" + loid + "'");
            if (up != 0) {
                System.out.println("count misbehaviour ..!");
            }
                                     
            %>
                            <td style="color:black;font-size: 20px"><%=rs.getString("placename")%></td>
                            <td style="color:black;font-size: 20px"><%=rs.getString("descrip")%></td>  
                           <td style="color:black;font-size: 20px"><%=rs.getString("category")%></td>  
                            <td style="color:black;font-size: 20px"><%=rs.getString("location")%></td>
                          
                            
                             <td style="color:black;font-size: 20px"><%=rs.getString("season")%></td> 
                             <td style="color:black;font-size: 15px"><a href="search5.jsp?<%=rs.getString("id")%>" style="color:  crimson;font-size: 20px">view</a></td>
                            
                          
                           
                    </tr> 
                    <%}
                                
                                 
              
                              
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
               
                </table>
                
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
