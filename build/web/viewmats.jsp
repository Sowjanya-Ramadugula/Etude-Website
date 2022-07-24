
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
			<div class="sidebar" style="background-image: url(blog-5.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu">
						<a  href="std-page.jsp?pgprt=0"><h2>Profile</h2></a>
                                                <a class="active" href="std-page.jsp?pgprt=3"><h2>View Materials</h2></a>
						<a  href="std-page.jsp?pgprt=1"><h2>Exams</h2></a>
						<a  href="std-page.jsp?pgprt=2"><h2>Results</h2></a>
				</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                            <div class="panel" style="max-width: 520px;float:left">
                                <div class="title">
                                   Available Materials
                                </div>
                                <table id="one-column-emphasis" style="min-width: 500px;margin: 10px; margin-top: 40px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Employee Id</th>
                
            <th scope="col">Subject Name</th>
            <th scope="col">File</th>
            
        </tr>
    </thead>
    
       <%
    try{
        
    
    Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/IMS","root","root") ;		
         // String sql="select * from student_registration";
         
         Statement stmt=con.createStatement();
        ResultSet res =stmt.executeQuery("SELECT * from student_registration where regno='"+username+"' ");
            while(res.next()){
            String department=res.getString(3);
             int year=Integer.parseInt(res.getString(5));
              out.println(department+year);
              stmt.close();
                con.close();
%>
                            
        <% 
            try {
               
                {
              
                               Class.forName("com.mysql.jdbc.Driver");
                             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techworld3g_2","root","root");			
                                

                                String sqlString = "SELECT * FROM files where(Department='"+department+"' and year='"+year+"')";
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
}
catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
       
}
}
catch(Exception e)
{}


            %>
            </table>
          
    </div>
     </div>
                       