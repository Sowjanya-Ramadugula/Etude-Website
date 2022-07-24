import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class student_login extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String uname = request.getParameter("uname");
        String psw = request.getParameter("psw");
        
        if(!student_validate.checkUser(uname, psw))
        {   
            out.println("Username or Password incorrect");
            RequestDispatcher rs = request.getRequestDispatcher("student_home.html");
            rs.include(request, response);
        }
        else
        {
            
           HttpSession session =request.getSession();
            session.setAttribute("uname",uname);
           RequestDispatcher rd = getServletContext().getRequestDispatcher("/index_12.jsp");
                rd.forward(request, response);
           
      
        }
       
    }  
}