
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
//import static java.lang.System.out;
import java.io.*;
import java.sql.*;
//import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

public class index extends HttpServlet {

  

Blob Image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;
    @Override
  protected void doPost       
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
 

try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
stmt = con.createStatement();
String empid=request.getParameter("uname");
 rs =stmt.executeQuery("SELECT Image from employee_registration where Emp_Id='"+empid+"'");
if (rs.next()) {
Image = rs.getBlob(1);
imgData = Image.getBytes(1,(int)Image.length());
} 
else {
out.println("Display Blob Example");
out.println("image not found for given id>");
return;
}



out.println("<html>");
              out.println("<body><center>");
          //String faculty = request.getParameter("Name");   
          
         
              Class.forName("com.mysql.jdbc.Driver");
              
              //creating connection with the database
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
              response.setContentType("text/html");
                stmt=con.createStatement();
                
            rs =stmt.executeQuery("SELECT Image from employee_registration where Emp_Id='"+empid+"'");
     
             while(rs.next())
              { 
                
              
             response.setContentType("image/*");
           
            out.print("</td></tr>");
              }
             out.print("</table>");
              out.print("</center>");
              out.print("</body>");
              out.print("</html>");

// display the image
response.setContentType("image/jpg");
OutputStream o = response.getOutputStream();
o.write(imgData);
o.flush();
o.close();
} catch (Exception e) {
//out.println("Unable To Display image");
//out.println("Image Display Error=" + e.getMessage());
return;
} finally {
try {
rs.close();
stmt.close();
con.close();
} catch (SQLException e) {
e.printStackTrace();
}
}
}
}
