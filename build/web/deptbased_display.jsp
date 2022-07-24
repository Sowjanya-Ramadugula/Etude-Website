<%-- 
    Document   : deptbased_display
    Created on : Sep 17, 2018, 7:46:52 PM
    Author     : user
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Vignan's Faculty List</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}
.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;
    border: none;
    outline: none;
    color: black;
    padding: 12px 14px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 100px;
  /*  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;*/
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 8px 10px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
body {
  margin: 0;
  background-color:white;
}

/* Style the header */
.header {
    background-color: #ff581c;
    padding: 20px;
    text-align: center;
}

/* Style the top navigation bar */
.topnav {
    overflow: hidden;
    background-color: #50f442;
}
.topnav-right {
  float: right;
}
/* Style the topnav links */
.topnav a {
    float: left;
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
    background-color:cyan;
    color: black;
}
</style>
</head>
<body>

<div class="header">
  <h1>Vignan's Faculty Information System</h1>
</div>

<div class="topnav">
  <a href="Home.jsp">Home</a>
    <div class="dropdown-content">
        
    </div>
  

  <div class="topnav-right">
    <a href="http://vignan.ac.in">Contact Us</a>
  </div>
</div>
    <div class="body">
        <%
      Statement stmt=null;
      Connection con=null;
        out.println("<html>");
              out.println("<body><center>");
         String departments = request.getParameter("departments");   
          try {
              Class.forName("com.mysql.jdbc.Driver");
              
              //creating connection with the database
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
              response.setContentType("text/html");
                stmt=con.createStatement();
                
            ResultSet rs =stmt.executeQuery("SELECT Name from employee_registration where Department='"+departments+"' ");
            int i=1;
             while(rs.next())
              { 
              String Name=rs.getString("Name"); 
              out.println(i+".  "+"<a href=details.java>"+Name+"</a>");
              out.println("<br>");
              out.println("<br>");
              out.println("<br>");
              i++;
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
    </div>
</body>
</html>

