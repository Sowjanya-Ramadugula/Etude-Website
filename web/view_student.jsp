<%-- 
    Document   : view_faculty
    Created on : Oct 14, 2018, 5:14:44 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style> 
        .td{
      text-color:white;
      }</style>
        <title>View Profile</title>
    </head>
    
    <center>
        
      <%  
          Statement stmt=null;
      Connection con=null;
        out.println("<html>");
              out.println("<body><center>");
          String uname =(String)session.getAttribute("uname");   
              
              
              out.print("<h2>Welcome \t \t</h2>"+"<h2>"+uname+"</h2>"); 
          try {
              Class.forName("com.mysql.jdbc.Driver");
              
              //creating connection with the database
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
              response.setContentType("text/html");
                stmt=con.createStatement();
                
            ResultSet rs =stmt.executeQuery("SELECT Name,regno,Department,email,year,section from student_registration where regno='"+uname+"' ");
     
             while(rs.next())
              { 
                
                out.print("<table>") ;
              String name=rs.getString("Name");
              out.print("<tr><td><h2>Name</h2></td> <td>     </td>  <td>  :  </td>    <td>    </td> <td><h2>"+name+"</h2></td></tr></h1>");
              String empid=rs.getString("regno");
              out.print("<tr><td><h2>Faculty Id</h2></td> <td>     </td>   <td>  :  </td>   <td>    </td> <td><h2>"+empid+"</h2></td></tr>");
              String Department=rs.getString("Department");
              out.print("<tr><td><h2>Department</h2></td> <td>     </td>   <td>  :  </td>   <td>    </td> <td><h2>"+Department+"</h2></td></tr>");
              String email=rs.getString("email");
              out.print("<tr><td><h2>Email Id</h2></td>  <td>     </td>   <td>  :  </td>   <td>    </td> <td><h2>"+email+"</h2></td></tr>");
              String year=rs.getString("year");
              out.print("<tr><td><h2>year</h2></td> <td>     </td>  <td>  :  </td>    <td>    </td> <td><h2>"+year+"</h2></td></tr>");
              String section=rs.getString("section");
             out.print("<tr><td><h2>section</h2></td>  <td>     </td>   <td>  :  </td>   <td>    </td> <td><h2>"+section+"</h2></td></tr>");
              }
             out.print("</table>");
              out.print("</center>");
              out.print("</body>");
              out.print("</html>");
          }
          catch (Exception ex) {
            // out.println(ex.getMessage());
          }
          finally{
          try{
          if(stmt!=null)
          {
          stmt.close();
          }
          if(con!=null)
          {
          con.close();
          }
          }
          catch(SQLException ex){}
          }
           
     %>  
    </center>
    </body>
</html>
