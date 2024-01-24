/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

/**
 *
 * @author welcome
 */
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author java2
 */
public class Dbconnection {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		getConnection();
	}
    public static Connection getConnection() {
        Connection con = null;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			System.out.println("classes loaded");
		
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/efficientkeyword", "root", "root");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }
}
