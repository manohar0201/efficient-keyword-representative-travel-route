    <%-- 
    Document   : oactivate
    Created on : Sep 27, 2017, 4:12:34 PM
    Author     : welcome
--%>

<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>

<%@page import="DB.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid = request.getQueryString();
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from userregs where id='" + uid + "'");
        if (rs.next()) {
          
                 
            
           
            
            st1 =con.createStatement();
            int i = st1.executeUpdate("update userregs set request='Authorized' where id='" + uid + "'");
            if (i != 0) {
             
                response.sendRedirect("userdetails.jsp?umsgg=success");
            } else {
                response.sendRedirect("userdetails.jsp?uumsgg=failed");
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>