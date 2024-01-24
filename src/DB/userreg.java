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

public class userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userreg() {
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
        
    
   
    String usernamee = request.getParameter("username");
    String useerid = request.getParameter("userid");
   
    String password = request.getParameter("Password");
    
    String emailid = request.getParameter("emailid");
    String dob = request.getParameter("dob");
    String phone = request.getParameter("phon");
    String location = request.getParameter("location");
    String gender = request.getParameter("gen");
   
  System.out.println(dob+"               "+useerid+"          "+usernamee);
  
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

    
        String sql = "Insert into userregs(usernmae,useerid,password,mailids,dob,phone,location,gender,profile) values (?,?,?,?,?,?,?,?,?)";
    PreparedStatement statement = con.prepareStatement(sql);
   
    
    statement.setString(1, usernamee);
    statement.setString(2, useerid);
    statement.setString(3, password);
    statement.setString(4, emailid);
    statement.setString(5,dob);
    statement.setString(6, phone);
    statement.setString(7, location);
    statement.setString(8, gender);
   
   
            
   
     
    if (inputStream != null) {
        statement.setBlob(9, inputStream);
    }
    
    int row = statement.executeUpdate();
    if (row > 0) {
        
         response.sendRedirect("userlogin.jsp?umsgg=Registration_Success");
        
        
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
