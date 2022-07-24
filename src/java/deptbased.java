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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author user
 */
public class deptbased extends HttpServlet {

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
    protected void doGet       
        (HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
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
                
            ResultSet rs =stmt.executeQuery("SELECT Name,Emp_Id from employee_registration where Department='"+departments+"' ");
     
             while(rs.next())
              { 
              String Name=rs.getString("Name"); 
              String Emp_Id=rs.getString("Emp_Id");
              out.println("<a href=details.java>"+Name+"</a>");
               HttpSession session = request.getSession();
               session.setAttribute("Emp_Id",Emp_Id );
             
              out.println("<br>");
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
          
            // request.setAttribute("Name",Name); 
        //  RequestDispatcher res = request.getRequestDispatcher("details");
        //     res.forward(request, response);
                    
        
        }
        
    }

    