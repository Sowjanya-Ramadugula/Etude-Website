import java.sql.*;

public class student_validate
 {
     public static boolean checkUser(String uname,String psw) 
     {
      boolean st =false;
      try{

	 //loading drivers for mysql
         Class.forName("com.mysql.jdbc.Driver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:mysql://localhost:3306/IMS","root","root");
         PreparedStatement ps =con.prepareStatement
                             ("select * from student_registration where regno=? and Password=?");
         ps.setString(1, uname);
         ps.setString(2, psw);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(Exception e)
      {
          e.printStackTrace();
      }
         return st;                 
  }   
}