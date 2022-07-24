<%-- 
    Document   : readqsns
    Created on : Oct 16, 2018, 8:46:55 AM
    Author     : user
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
    <% 
        Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
          Statement statement = con.createStatement();
String empid=(String)session.getAttribute("empid"); 
String department=(String)session.getAttribute("department");
String year=(String)session.getAttribute("year"); 
String section=(String)session.getAttribute("section"); 
String examname=(String)session.getAttribute("examname"); 
String subjectname=(String)session.getAttribute("subjectname"); 
int noofqsns = Integer.parseInt(session.getAttribute("noofqsns").toString());
//String sql="create table "+examname+"(question varchar(5000),opt1 varchar(50),opt2 varchar(50),opt3 varchar(50),opt4 varchar(50),correct varchar(50));";
//statement.execute(sql);
int n=noofqsns;

%> 
<form action="insertqs.jsp" method="post">
 <table> <tr>
                           <td><label>Your Question:</label></td>
                           <td colspan="4"><input type="text" name="question" class="text" placeholder="Type your question here" style="width: 420px;" ></td><br>
                       </tr>
                       <tr>
                           <td><label>Options</label></td>
                           <td><input type="text" name="opt1" class="text" placeholder="First Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt2" class="text" placeholder="Second Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt3" class="text" placeholder="Third Option" style="width: 130px;" ></td>
                           <td><input type="text" name="opt4" class="text" placeholder="Fourth Option" style="width: 130px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Correct Answer</label></td>
                           <td colspan="4"><center><input type="text" name="correct" class="text" placeholder="Correct Answer" style="width: 130px;" ></center></td>
  <tr>
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                           
                   </tr>
                   </table>
</form> 

            <% while (n!=0) { 
   RequestDispatcher rd = request.getRequestDispatcher("insertqs.jsp");
            rd.forward(request, response);
         
session.setAttribute("n",n);
        
}
%>
           

<%
    
            session.setAttribute("examname",examname);  
            session.setAttribute("empid",empid);
            session.setAttribute("subjectname",subjectname);
            session.setAttribute("department",department);
            session.setAttribute("year",year);
            session.setAttribute("section",section);
            session.setAttribute("noofqsns",noofqsns);
        
        


%>

    </body>
</html>
