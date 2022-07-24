
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


@WebServlet(name = "student_registration", urlPatterns = {"/student_registration"})
public class student_registration extends HttpServlet {
//private static final long serialVersionUID = 1L;
PrintWriter out;
//InputStream inputStream = null; 
//int allField = 0;

@Override
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        try
        {
        res.setContentType("text/html");
        out=res.getWriter();
	String Name=req.getParameter("fullname"); 
        String lName=req.getParameter("lName");
	
	String Emp_Id=req.getParameter("stdid");
	String Department=req.getParameter("departments");
	String email=req.getParameter("email");
	String year=req.getParameter("year");
	String section=req.getParameter("section");
        String city=req.getParameter("city");
        String address=req.getParameter("address");
        String contact=req.getParameter("contact");
        
	String Password=req.getParameter("pswd");
        out.println("Name:	"+Name+"<br>");
	out.println("Emp_Id:	"+Emp_Id+"<br>");
	out.println("Department:	"+Department+"<br>");
        out.println("E-Mail:	"+email+"<br>");
	out.println("Section:	"+section+"<br>");
        out.println("Year:	"+year+"<br>");
        out.println("Password:	"+Password+"<br>");
        
           Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
          
            out.println("Connected to Database"+"<br>");
       
        
        PreparedStatement ps = con.prepareStatement("insert into student_registration(Name,regno,Department,email,year,section,Password) values(?,?,?,?,?,?,?)");
            ps.setString(1,Name);
            ps.setString(2,Emp_Id);
            ps.setString(3,Department);
            ps.setString(4,email);
            ps.setString(5,year);
            ps.setString(6,section);
            ps.setString(7,Password);
            ps.executeUpdate();
            out.println("Inserted successfully");
            con.close();
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root") ;		
          
          try {
            String sql="INSERT into users(first_name,last_name,user_name,email,password,user_type,contact_no,city,address) "
                    + "Values(?,?,?,?,?,?,?,?,?)";
            
            PreparedStatement pstm=conn.prepareStatement(sql);
            pstm.setString(1,Name );
            pstm.setString(2,lName );
            pstm.setString(3,Emp_Id );
            pstm.setString(4,email );
            pstm.setString(5,Password );
            pstm.setString(6,"student" );
            pstm.setString(7,contact );
            pstm.setString(8,city );
            pstm.setString(9,address );
            pstm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }

	}
	catch(Exception e)
        {
            out.println(e.getMessage());
        }
             }
}
    

