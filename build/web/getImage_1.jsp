<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<% 
Blob Image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs = null;
try {
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
stmt = con.createStatement();
String id=(String)request.getAttribute("uname");

//String empid=rs.getString("uname");
rs = stmt.executeQuery("select Image from employee_registration where Emp_Id = '1'");
if (rs.next()) {
Image = rs.getBlob(1);
imgData = Image.getBytes(1,(int)Image.length());
} 
else {
out.println("Display Blob Example");
out.println("image not found for given id");
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
                
            rs =stmt.executeQuery("SELECT Image from employee_registration where Emp_Id='1'");
     
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
%>