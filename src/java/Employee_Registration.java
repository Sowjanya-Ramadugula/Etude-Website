
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import myPackage.DatabaseClass;


@WebServlet(name = "Employee_Registration", urlPatterns = {"/Employee_Registration"})
@MultipartConfig(maxFileSize = 169999999)
public class Employee_Registration extends HttpServlet {
private static final long serialVersionUID = 1L;
PrintWriter out;
InputStream inputStream = null; 
int allField = 0;

@Override
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        try
        {
        res.setContentType("text/html");
        out=res.getWriter();
	String Name=req.getParameter("full name"); 
        String lName=req.getParameter("lName");
	String Emp_Id=req.getParameter("emp id");
	String Department=req.getParameter("departments");
	String Qualification=req.getParameter("qualification");
	String email=req.getParameter("email");
	String Research_Area=req.getParameter("research area");
	String Experiance=req.getParameter("experiance");
	String Password=req.getParameter("pswd");
        String city=req.getParameter("city");
        String address=req.getParameter("address");
        String contact=req.getParameter("contact");
        String Designation=req.getParameter("designation");
        out.println("Name:	"+Name+"<br>");
	out.println("Emp_Id:	"+Emp_Id+"<br>");
	out.println("Department:	"+Department+"<br>");
	out.println("Qualification:	"+Qualification+"<br>");
	out.println("Designation:   "+Designation+"<br>");
        out.println("E-Mail:	"+email+"<br>");
	out.println("Research_Area:	"+Research_Area+"<br>");
        out.println("Experiance:	"+Experiance+"<br>");
        out.println("Password:	"+Password+"<br>");
        out.println(city + address + contact);
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
          
            out.println("Connected to Database"+"<br>");
       
        
        PreparedStatement ps = con.prepareStatement("insert into employee_registration(Name,Emp_Id,Department,Qualification,Designation,email,Research_Area,Experiance,Password,Image) values(?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1,Name);
            ps.setString(2,Emp_Id);
            ps.setString(3,Department);
            ps.setString(4,Qualification);
            ps.setString(5,Designation);
            ps.setString(6,email);
            ps.setString(7,Research_Area);
            ps.setString(8,Experiance);
            ps.setString(9,Password);
            ps.setBlob(10,inputStream);
            ps.executeUpdate();
            con.close();
            
            }
           catch(Exception e)
        {
            out.println(e.getMessage());
        }
        
        
        try {
            out.println("welcome");    
          Class.forName("com.mysql.jdbc.Driver");  
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root") ;		
        
               String Name=req.getParameter("full name"); 
        String lName=req.getParameter("lName");
	String Emp_Id=req.getParameter("emp id");
	String Department=req.getParameter("departments");
	String Qualification=req.getParameter("qualification");
	String email=req.getParameter("email");
	String Research_Area=req.getParameter("research area");
	String Experiance=req.getParameter("experiance");
	String Password=req.getParameter("pswd");
        String city=req.getParameter("city");
        String address=req.getParameter("address");
        String contact=req.getParameter("contact");
        String Designation=req.getParameter("designation");
        out.println(Name + lName + Emp_Id + email + Password + city + contact + address);
            String sql="INSERT into users(first_name,last_name,user_name,email,password,user_type,contact_no,city,address) "
                    + "values(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,Name );
            pstm.setString(2,lName );
            pstm.setString(3,Emp_Id );
            pstm.setString(4,email );
            pstm.setString(5,Password );
            pstm.setString(6,"admin" );
            pstm.setString(7,contact);
            pstm.setString(8,city );
            pstm.setString(9,address );
            out.println("asj");
            pstm.executeUpdate();
            out.println("asj");
            conn.close();
        }
	  catch (Exception ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
       
	 
    }
}
    

