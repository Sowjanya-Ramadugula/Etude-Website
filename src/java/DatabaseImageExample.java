import java.sql.*;
import java.io.*;
 import java.io.InputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

@WebServlet("/UploadImage")
 @MultipartConfig(maxFileSize=16177215)
public class DatabaseImageExample {
   
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException 
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/images","root","root");
             InputStream inputStream=null;
            Part filePart=req.getPart("myFile");
            File file=new File("");
            FileInputStream fis=new FileInputStream(file);
            
            PreparedStatement ps=con.prepareStatement("insert into upload_image (name,image) values(?,?)"); 
            ps.setString(1,"filePart");
            ps.setBinaryStream(2,fis,(int)file.length());
            ps.executeUpdate();
 
            ps.close();
            fis.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}