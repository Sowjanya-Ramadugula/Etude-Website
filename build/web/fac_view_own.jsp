<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.Db_Connection"%>
<%@page import="java.io.IOException,java.io.PrintWriter,java.sql.*,javax.servlet.ServletException, javax.servlet.http.HttpServlet, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(blog-5.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
                                                <a href="adm-page.jsp?pgprt=6"><h2>Upload Documents</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=5"><h2>View Documents</h2></a>
                                                
						<a href="adm-page.jsp?pgprt=2"><h2>Conduct Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
					
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area"  >
                            <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left;" >
   
   
    <center>
<%       String empid=(session.getAttribute("username")).toString();
        out.println("Welcome    "+empid);
                   %>
                         <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">ID</th>
                
            <th scope="col">File Name</th>
            <th scope="col">File</th>
            
        </tr>
    </thead>
    
                           
                    <%
                        try
                        {
                               Class.forName("com.mysql.jdbc.Driver");
                             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techworld3g_2","root","root");			
                                Statement stmt=conn.createStatement();
           

                                String sqlString = "SELECT * FROM files where(empid='"+empid+"')";
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
out.println(empid);
                            %>
                                    <tr>
                                        out.prinln(empid);
                                        <td><center><%out.print(rs.getString("id")); %></center></td>
                                        <td><center><%out.print(rs.getString("title")); %></center></td>
                                        <td><center><a href="view_file.jsp?id=<%out.print(rs.getString("id"));%>">View</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table></center>
                            
                            <%
                                rs.close();
                                myStatement.close();
                                conn.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
        
       
                            </div>
                    </div>
  </html>