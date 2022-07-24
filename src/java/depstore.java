import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class depstore extends HttpServlet {
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String deptartments = request.getParameter("departments");
       out.print("departments");
           RequestDispatcher rs = request.getRequestDispatcher("deptbased");
            rs.forward(request, response);
   
       
    }  
}