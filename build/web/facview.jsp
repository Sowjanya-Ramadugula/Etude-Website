
<%@page import="java.sql.Statement"%>
<%@page import="myPackage.DatabaseClass"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<% String username=(session.getAttribute("username")).toString(); %>
<!-- SIDEBAR -->
			<div class="sidebar" >
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
                                                 <a href="adm-page.jsp?pgprt=7"><h2>View Results</h2></a>
					
						</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 520px;float:left">
                                <div class="title">
                                   Uploaded Materials
                                </div>
                                <table id="one-column-emphasis" style="min-width: 500px;margin: 10px; margin-top: 40px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Id</th>
                
            <th scope="col">Subject Name</th>
            <th scope="col">File</th>
            
        </tr>
    </thead>
    
                                   
        <% 
            try {
               
                               String empid=(String)session.getAttribute("uname");

                               Class.forName("com.mysql.jdbc.Driver");
                               Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techworld3g_2","root","root");			
                               Statement stmt=conn.createStatement();
           

                                String sqlString = "SELECT * FROM files where(empid='"+username+"')";
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
                                  while(rs.next()){
                   %>
        <tr>
        <td><%out.print(rs.getString("id")); %></td>
        <td><%out.print(rs.getString("title")); %></td>
        <td><a href="view_file.jsp?id=<%out.print(rs.getString("id"));%>">View</a></td>
    </tr>
            <%
          
}
conn.close();

       
}
catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
            %>
            </table>
          
    </div>
     </div>
                       