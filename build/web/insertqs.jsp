<%-- 
    Document   : insertqs
    Created on : Oct 16, 2018, 1:41:08 PM
    Author     : user
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            String examname=(String)session.getAttribute("examname"); 

            String question=request.getParameter("question"); 
	String opt1=request.getParameter("opt1");
	String opt2=request.getParameter("opt2");
	String opt3=request.getParameter("opt3");
	String opt4=request.getParameter("opt4");
	String correct=request.getParameter("correct");
        int noofqsns = Integer.parseInt(session.getAttribute("noofqsns").toString());
        int n = Integer.parseInt(session.getAttribute("n").toString());
        
	Class.forName("com.mysql.jdbc.Driver");  
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
        out.println("Connected to Database"+"<br>");   
        PreparedStatement ps = con.prepareStatement("insert into "+examname+"(question,opt1,opt2,opt3,opt4,correct) values(?,?,?,?,?,?)");
            ps.setString(1,question);
            ps.setString(2,opt1);
            ps.setString(3,opt2);
            ps.setString(4,opt3);
            ps.setString(5,opt4);
            ps.setString(6,correct);
            ps.executeUpdate();
            session.setAttribute("question",question);
            session.setAttribute("opt1",opt1);
            session.setAttribute("opt2",opt2);
            session.setAttribute("opt3",opt3);
            session.setAttribute("opt4",opt4);
            session.setAttribute("correct",correct);
          out.println("Inserted");
          
            n=n-1;
            session.setAttribute("n",n);
            RequestDispatcher rd = request.getRequestDispatcher("/readqsns.jsp");
            rd.forward(request, response);
                 
         %>
            
    </body>
</html>
