package DB;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.InetAddress;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
/**
 * Servlet implementation class addplacess
 */

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class addplacess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addplacess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    try {                
        
    
   
    String placename = request.getParameter("placename");
    String descrip = request.getParameter("descrip");
   
    String cate = request.getParameter("cate");
    
    String locati = request.getParameter("locati");
    String map = request.getParameter("map");
    String season = request.getParameter("season");
    String timinggg=request.getParameter("timing");
   
    
   
  
  
InputStream inputStream = null;

Part filePart = request.getPart("photo");
if (filePart != null) {

    System.out.println(filePart.getName());
    System.out.println(filePart.getSize());
    System.out.println(filePart.getContentType());

    inputStream = filePart.getInputStream();
}
 
Connection con = Dbconnection.getConnection();
    Statement st3 = con.createStatement();
  

 
try {

           
    
     int i =3;
if (i>=1){

    
        String sql = "Insert into addplace(placename,descrip,category,location,mapdir,season,upplace,prati,timing) values (?,?,?,?,?,?,?,?,?)";
    PreparedStatement statement = con.prepareStatement(sql);
   
    
    statement.setString(1,  placename);
    statement.setString(2, descrip);
    statement.setString(3, cate);
    statement.setString(4, locati);
    statement.setString(5, map);
    statement.setString(6, season);
  
    statement.setInt(8, 0);
    statement.setString(9, timinggg);
   
    if (inputStream != null) {
        statement.setBlob(7, inputStream);
    }
    
    int row = statement.executeUpdate();
    if (row > 0) {
        
         response.sendRedirect("addplace.jsp?msggg=userregister");
        
        
    }
    else{
       response.sendRedirect("userreg.jsp?uumsgg=failed");
                
       
        
    }
}
        
} catch (SQLException ex) {
    ex.printStackTrace();
} 
} catch (SQLException ex) {
            Logger.getLogger(userreg.class.getName()).log(Level.SEVERE, null, ex);
    } 
    }

}
