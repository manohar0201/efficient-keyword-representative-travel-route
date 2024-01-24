package DB;

import java.io.IOException;
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
 *
 * @author welcome
 */

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
/**
 * Servlet implementation class recommendd
 */
public class recommendd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public recommendd() {
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
        
    
   
   String fromms = request.getParameter("from");
    String toss = request.getParameter("to");
    HttpSession session = request.getSession();
   String  usernamees=(String)session.getAttribute("uname");
    String  reqqidd=(String)session.getAttribute("reqqid");
    
    String reuser = request.getParameter("recuser");
     String Place = request.getParameter("place");
     String  timing= request.getParameter("msgg");
   
    
   
  
  
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

    
        String sql = "Insert into recoemnd(froms,toos,user,recoment,msgg,sharimages,place) values (?,?,?,?,?,?,?)";
    PreparedStatement statement = con.prepareStatement(sql);
   
    
    statement.setString(1,fromms);
    statement.setString(2, toss);
    statement.setString(3, usernamees);
    statement.setString(4, reuser);
    statement.setString(5, timing);
     statement.setString(7, Place);
     
    
  
    
   
    if (inputStream != null) {
        statement.setBlob(6, inputStream);
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
