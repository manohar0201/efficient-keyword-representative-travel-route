
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

<%@page import="java.util.Random"%>
<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
    Connection con = null;
    Statement st = null;
    Connection con5 = null;
    Statement st5 = null;
     Statement st1 = null;
    ResultSet rs = null;
     ResultSet rs1 = null;
    
    
    String id = request.getParameter("id");
    String usernamee = request.getParameter("username");
    String passs = request.getParameter("pass");
     String sub1 = request.getParameter("private");
    String sub2 = request.getParameter("public");
    
   
     String ustatus="Authorized";
    
     String key="0";
   int saction = Integer.parseInt(request.getParameter("saction"));
    switch (saction) {
        case 1:
	   con = Dbconnection.getConnection();
                st = con.createStatement();
               rs = st.executeQuery("select * from userregs where usernmae='" + usernamee + "' and  password='" + passs + "'");
        if (rs.next()) {
            String idd=rs.getString("id");
            rs1 = st.executeQuery("select * from userregs where  id='"+idd+"' and request='"+ustatus+"'");
            
            if(rs1.next()){
               String uid=rs1.getString("id");
                session.setAttribute("uidd", uid);
                String uname=rs1.getString("usernmae");
                 session.setAttribute("uname", uname);
                String ulocc=rs1.getString("location");
                session.setAttribute("ulocc", ulocc);
                session.setAttribute("unames", uname);
                 response.sendRedirect("userhome.jsp?umsg=failed");
            }
                       else{
                response.sendRedirect("userlogin.jsp?uumsggg=failed");
                       }
             }
              else{
                response.sendRedirect("userlogin.jsp?uumsgg=failed");
                         }
                
             
   break;
        case 2:
            
             String  loid=(String)session.getAttribute("lid");
//              String  loid=);
              String  unames=(String)session.getAttribute("unames");
               String  locat=(String)session.getAttribute("ulocc");
              String reqstatus = "Waiting";
           String placestart=request.getParameter("placestart");
           session.setAttribute("sloca", placestart);
           String placeend=request.getParameter("placeend");
           session.setAttribute("eloca", placeend);
           String intervisit=request.getParameter("intervisit"); 
           String totaldays=request.getParameter("totaldays");
           String dateoftravel=request.getParameter("dateoftravel");
           String nopersionn=request.getParameter("nopersionn");
           String season=request.getParameter("season");
           String p="a";
           String hot="b";
           String tiem="c";
          
             try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                int r=2;
                if (r>=0) {
            int i = st.executeUpdate("insert into reloca(loid,placestart,placeend,inteerestvisit,totaldays,datetra,person,season,requestt,username,price,hotelname,timeschedul) values('"+loid+"','"+placestart+"','"+placeend+"','"+intervisit+"','"+totaldays+"','"+dateoftravel+"','"+nopersionn+"','"+locat+"','"+reqstatus+"','"+unames+"','"+p+"','"+hot+"','"+tiem+"')"); 
                     }
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
               response.sendRedirect("viewmap22.jsp?umsgg=userregister");
                System.out.println("count misbehaviour ..!");
            }
            
         else {
            response.sendRedirect("userreg.jsp?uumsgg=failed");
        }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
   
    break;
       
        case 3:
            
            try {
                String idm = "ADMIN";
                if (idm.equalsIgnoreCase(usernamee) && idm.equalsIgnoreCase(passs)) {
                    response.sendRedirect("addplace.jsp?umsg=success");

                } else {
                    response.sendRedirect("addplace.jsp?umsgg=failed");
                }

            } catch (Exception ex) {
                ex.printStackTrace();
                        }
                        break;
                        case 4:
            
             String  usernmaee=(String)session.getAttribute("unames");
             String  locattionn=(String)session.getAttribute("ulocc");
             String feed=request.getParameter("feed"); 
             String resion=request.getParameter("resion");
             String rating=request.getParameter("rating");
             String Userinterest=request.getParameter("Userinter");
          
             try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                int r=2;
                if (r>=0) {
            int i = st.executeUpdate("insert into userreat(useranme,location,feed,resion,ratings,interest) values('"+usernmaee+"','"+locattionn+"','"+feed+"','"+resion+"','"+rating+"','"+Userinterest+"')"); 
                  
            response.sendRedirect("userhome.jsp?uumsgg=failed");  
                }
           
            
         else {
            response.sendRedirect("feedback.jsp?uumsgg=failed");
        }
            } catch (Exception ex) {
                ex.printStackTrace();
            } 
                break;       
case 5:
            
             String  usernmaeee=(String)session.getAttribute("unames");
            String  locattionne=(String)session.getAttribute("ulocc");
            String keysearch=request.getParameter("search");
            session.setAttribute("uskey", keysearch);
            try {
                con5 = Dbconnection.getConnection();
                st5 = con5.createStatement();
                int r=2;
                if (r>=0) {
            int i = st5.executeUpdate("insert into userkey(useranme,location,userskey) values('"+usernmaeee+"','"+locattionne+"','"+keysearch+"')"); 
                  response.sendRedirect("viewsearch2.jsp?uumsgg=failed");
            
                }           
            
         else {
            response.sendRedirect("websearc.jsp?uumsgg=failed");
        }
            } catch (Exception ex) {
                ex.printStackTrace();
            } 
                break; 


                        case 6:
            
          String fromm = request.getParameter("from");
    String tos = request.getParameter("tos");
   
    String place1 = request.getParameter("place1");
    
    String place2 = request.getParameter("place2");
    String place3 = request.getParameter("place3");
    String place4 = request.getParameter("place4");
    String place5 = request.getParameter("place5");
    String sdate = request.getParameter("sdate");
    
    String price = request.getParameter("price");

                                                     try {
                con = Dbconnection.getConnection();
                st = con.createStatement();
                int r=2;
                if (r>=0) {
            int i = st.executeUpdate("Insert into addplaces(fromss,tos,place1,place2,place3,place4,place5,sdate,price) values ('"+fromm+"','"+tos+"','"+place1+"','"+place2+"','"+place3+"','"+place4+"','"+place5+"','"+sdate+"','"+price+"')"); 
                  
            response.sendRedirect("routee.jsp?umsg=failed");  
                }
           
            
         else {
            response.sendRedirect("routee.jsp?uumsgg=failed");
        }
            } catch (Exception ex) {
                ex.printStackTrace();
            } 
                break;    
                                                                                     
             default:
            response.sendRedirect("index.jsp");
                       }
            
    
%>
