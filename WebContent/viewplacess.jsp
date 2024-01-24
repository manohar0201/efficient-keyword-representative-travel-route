<%-- 
    Document   : Image
    Created on : Aug 7, 2015, 1:27:26 PM
    Author     : java2
--%>



<%@page import="DB.Dbconnection"%>

<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%>

<%
    String id = request.getParameter("id");
    System.out.println("The Image Unique ID " + id);
    Blob image = null;
    Connection con = null;
    byte[] imgData = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        con = Dbconnection.getConnection();
        stmt = con.createStatement();
        rs = stmt.executeQuery("select * from addplace where id = '" + id + "'");
        if (rs.next()) {
            image = rs.getBlob("upplace");
            imgData = image.getBytes(1, (int) image.length());
        } else {
            out.println("Display Blob Example");
            out.println("image not found for given id>");
            return;
        }
// display the image
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("Image Display Error=" + e.getMessage());
        return;
    } finally {
    }

%>