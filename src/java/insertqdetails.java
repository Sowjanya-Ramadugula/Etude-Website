
import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet(name = "insertqdetails", urlPatterns = {"/insertqdetails"})
public class insertqdetails extends HttpServlet {
PrintWriter out;
@Override
 protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        try
        {
        res.setContentType("text/html");
        out=res.getWriter();
	String empid=req.getParameter("empid"); 
	String department=req.getParameter("departments");
	String year=req.getParameter("year");
	String section=req.getParameter("section");
	String examname=req.getParameter("examname");
	String subjectname=req.getParameter("subname");
	int noofqsns=Integer.parseInt(req.getParameter("noofqsns"));
        Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
        out.println("Connected to Database"+"<br>");   
        PreparedStatement ps = con.prepareStatement("insert into qdetails(empid,department,year,section,examname,subjectname,noofqsns) values(?,?,?,?,?,?,?)");
            ps.setString(1,empid);
            ps.setString(2,department);
            ps.setString(3,year);
            ps.setString(4,section);
            ps.setString(5,examname);
            ps.setString(6,subjectname);
            ps.setInt(7,noofqsns);
            ps.executeUpdate();
            HttpSession session=req.getSession();  
            session.setAttribute("examname",examname);  
            session.setAttribute("empid",empid);
            session.setAttribute("subjectname",subjectname);
            session.setAttribute("department",department);
            session.setAttribute("year",year);
            session.setAttribute("section",section);
            session.setAttribute("noofqsns",noofqsns);
        
        Statement statement=con.createStatement();
        String sql="create table "+examname+"(question varchar(5000),opt1 varchar(50),opt2 varchar(50),opt3 varchar(50),opt4 varchar(50),correct varchar(50));";
        statement.execute(sql);

        
        
        RequestDispatcher dis=req.getRequestDispatcher("readqsns.jsp");          
          dis.forward(req, res);     
        }
	catch(Exception e)
        {
            out.println(e.getMessage());
        }
         
    }
}
    

