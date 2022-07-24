/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
//import static java.lang.System.out;
//import java.io.*;
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

/**
 *
 * @author user
 */
public class student_search extends HttpServlet {

      @Override
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost       
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
      Statement stmt=null;
      Connection con=null;
        out.println("<html>");
              out.println("<body><center>");
          String uname = request.getParameter("uname");   
              
              
              out.print("Welcome \t"+uname);
          try {
              Class.forName("com.mysql.jdbc.Driver");
              
              //creating connection with the database
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root");
              response.setContentType("text/html");
                stmt=con.createStatement();
                
            ResultSet rs =stmt.executeQuery("SELECT Name,Emp_Id,Department,email,Qualification,Designation,Research_Area,Experiance from employee_registration where Emp_Id='"+uname+"' ");
     
             while(rs.next())
              { 
                
                out.print("<table>") ;
              String name=rs.getString("Name");
              out.print("<tr><td>Name</td><td>"+name+"</td></tr>");
              String empid=rs.getString("Emp_Id");
              out.print("<tr><td>Faculty Id</td><td>"+empid+"</td></tr>");
              String Department=rs.getString("Department");
              out.print("<tr><td>Department</td><td>"+Department+"</td></tr>");
              String Qualification=rs.getString("Qualification");
              out.print("<tr><td>Qualification</td><td>"+Qualification+"</td></tr>");
              String Designation=rs.getString("Designation");
              out.print("<tr><td>Designation</td><td>"+Designation+"</td></tr>");
              String email=rs.getString("email");
              out.print("<tr><td>Email Id</td><td>"+email+"</td></tr>");
              String Research_Area=rs.getString("Research_Area");
              out.print("<tr><td>Research Area</td><td>"+Research_Area+"</td></tr>");
              String Experiance=rs.getString("Experiance");
             out.print("<tr><td>Experiance</td><td>"+Experiance+"</td></tr>");
             out.print("<tr><td>Click to View Your Image:</td>");
             
             out.print("<td><button><a href=\"getImage.java\">Image</a></button></td></tr>");
             RequestDispatcher res = request.getRequestDispatcher("getImage.java");
            res.include(request, response);
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
        }
        
    }

    