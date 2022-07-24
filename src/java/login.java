import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String uname = request.getParameter("uname");
        String psw = request.getParameter("psw");
        
        if(!Validate.checkUser(uname, psw))
        {   
            out.println("Username or Password incorrect");
            RequestDispatcher rs = request.getRequestDispatcher("faculty_home.html");
            rs.include(request, response);
        }
        else
        {
             request.setAttribute("uname", uname);
           HttpSession session =request.getSession();
            session.setAttribute("uname",uname);
           RequestDispatcher rd = getServletContext().getRequestDispatcher("/index_11.jsp");
                rd.forward(request, response);
           
        }
       
    }  
}