import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mailer extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        try{
            String email="";
            String pwd="";
              Class.forName("com.mysql.jdbc.Driver");
             Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
             
            String user_name=request.getParameter("username");
            String host ="smtp.gmail.com" ;
            String user = "etudevignans@gmail.com";
            String pass = "etude@123";
               PreparedStatement pstm = conn.prepareStatement("Select * from users where user_name=?");
               pstm.setString(1,user_name); 
            ResultSet rs=pstm.executeQuery();
            while(rs.next()){
                 email=rs.getString(5);
                 pwd=rs.getString(6);
            }
            String to = email;
            System.out.println(to);
            String from = "etudevignans@gmail.com";
            String subject = "Your Password";
            String messageText ="This is your etude account password :  "+ pwd + "  Please delete this after for security purpose";
            boolean sessionDebug = false;
            Properties props = System.getProperties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");
            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);
           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
}
