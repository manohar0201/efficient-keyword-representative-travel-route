<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DB.Dbconnection"%>
<%
 Connection con = null;
    Statement st = null;
    Connection con5 = null;
    Statement st5 = null;
     Statement st1 = null;
    ResultSet rs = null;
     ResultSet rs1 = null;
     
     String sourcc=request.getParameter("from");
                              session.setAttribute("foname", sourcc);
                              String  sourcess=(String)session.getAttribute("foname");
 String dess=request.getParameter("to");
                             String  useridd=(String)session.getAttribute("uidd");
            String  usernamee=(String)session.getAttribute("uname");
                             session.setAttribute("dto", dess);
                              String  desst=(String)session.getAttribute("dto");
            
                con = Dbconnection.getConnection();
                st = con.createStatement();
                int r=2;
                if (r>=0) {
            int i = st.executeUpdate("insert into searchfroom(username,userid,froms,too) values('"+usernamee+"','"+useridd+"','"+sourcc+"','"+dess+"')"); 
                  
            response.sendRedirect("search3.jsp?uumsgg=failed");  
                }

%>