package controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import database.Db_Connection;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.util.Random;
import javax.servlet.RequestDispatcher;

@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)

public class UploadFileController extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
                response.setContentType("text/html;charset=UTF-8");
                PrintWriter out = response.getWriter();
        
                InputStream inputStream = null;

                Random rand = new Random();
                int  n = rand.nextInt(9999) + 1;
                String idTemp=(String.valueOf(n));

                
                String empid=(request.getParameter("empid"));
                
                
                String department=(request.getParameter("departments"));
                
                
                int year=Integer.parseInt(request.getParameter("year"));
                
                String title=(request.getParameter("title"));
                
                Part filePart = request.getPart("file_uploaded");
                if (filePart != null) 
                {
                    System.out.println(filePart.getName());
                    System.out.println(filePart.getSize());
                    System.out.println(filePart.getContentType());

                    inputStream = filePart.getInputStream();
                }
                try 
                {
                    Class.forName("com.mysql.jdbc.Driver");  
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/techworld3g_2","root","root") ;		
           
                    String sql = "INSERT INTO files (id, empid,department,year,title, file) values (?,?,?,?, ?, ?)";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    statement.setString(1, idTemp);
                    statement.setString(2, empid);
                statement.setString(3, department);
                    statement.setInt(4, year);
                statement.setString(5, title);
                 
                 
                    if (inputStream != null) 
                    {
                        
                        statement.setBinaryStream(6, inputStream, (int) filePart.getSize());
                    }
                     
                    int row = statement.executeUpdate();
                   
                    if (row > 0) 
                    {
                            
                        out.println("File uploaded!!!");
                        
                        conn.close();
                        
                        response.sendRedirect("adm-page.jsp?pgprt=6");                    }
                    else
                    {
                        out.println("Couldn't upload your file!!!");
                        
                        conn.close();
                        
                        RequestDispatcher rs = request.getRequestDispatcher("adm=page?pgprt=6");
                        rs.include(request, response);
                    }    

                }catch(Exception e){e.printStackTrace();}     
    }   
}