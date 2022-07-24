import java.sql.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "Upload", urlPatterns = {"/Upload"})
@MultipartConfig(maxFileSize = 4294967)   // upload file's size up to 16MB
public class Upload extends HttpServlet 
{ 
private static final long serialVersionUID = 1L;
PrintWriter out;
InputStream inputStream = null; 
int allField = 0;
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse      response)
throws ServletException, IOException {
response.setContentType("text/html;charset=UTF-8");
try 
{
out = response.getWriter();
String Name=request.getParameter("subname");
String Subject_Id=request.getParameter("subid");
String Unit=request.getParameter("unit");
String department=request.getParameter("departments");
Part filePart = request.getPart("material");
if (filePart != null) 
{
System.out.println(filePart.getName());
System.out.println(filePart.getSize());
System.out.println(filePart.getContentType());
inputStream = filePart.getInputStream();
}
Class.forName("com.mysql.jdbc.Driver");  
Connection    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;
PreparedStatement ps = con.prepareStatement("insert into Materials(Name,Subject_Id,Unit,Department,Images)values(?,?,?,?,?)");
ps.setString(1,Name);
ps.setString(2,Subject_Id);
ps.setString(3,Unit);
ps.setString(4,department);

ps.setBlob(5,inputStream);
ps.executeUpdate();
out.println("Inserted");
}
catch(Exception e)
{
out.println(e);
}   
}
}