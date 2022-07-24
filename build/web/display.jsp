<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.Db_Connection"%> 
<html>
    <body>
        <center>
<table border="1" width="100%" cellpadding="5">
            <tr> 
               <th colspan="3">Uploaded Files</th>        
            </tr>
                <tbody>
                    <tr>
                        <td><center><b>Employee Id</b></center><td><center><b>Subject</b></center></td><td><center><b>Year</b></center></td><td><center><b>Department</b></center></td><td><center><b>File</b></center></td>
                    </tr>
                    
                    <%
                        try
                        {
                                    Class.forName("com.mysql.jdbc.Driver");  
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/techworld3g_2","root","root") ;		
           
                                String sqlString = "SELECT * FROM files";
                                Statement myStatement = conn.createStatement();
                                ResultSet rs=myStatement.executeQuery(sqlString);
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                        <td><center><%out.print(rs.getString("empid")); %></center></td>
                                        <td><center><%out.print(rs.getString("title")); %></center></td>

<td><center><%out.print(rs.getInt("year")); %></center></td>
                                        <td><center><%out.print(rs.getString("department")); %></center></td>
                                       
                                        <td><center><a href="view_file.jsp?id=<%out.print(rs.getString("id"));%>">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
                            
                            <%
                                rs.close();
                                myStatement.close();
                                conn.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
        
     </center> </body>
  </html>