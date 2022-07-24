
<%@page import="myPackage.DatabaseClass"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" >
				<div class="sidebar-background" style="background-color:rgba(81,191,69,0.98)">
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
                                                <a href="adm-page.jsp?pgprt=6"><h2>Upload Documents</h2></a>
						<a href="adm-page.jsp?pgprt=5"><h2>View Documents</h2></a>
                                                
						<a href="adm-page.jsp?pgprt=2"><h2>Conduct Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
                                                <a class="active" href="adm-page.jsp?pgprt=7"><h2>View Results</h2></a>>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area"  >
                            <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left;" >
            <form action="adm-page.jsp">
                <div class="title">Show Available </div>
                <br><br>
                <label>Select Course</label>
                <input type="hidden" name="pgprt" value="9">
                <select name="coursename" class="text">
        <% 
            ArrayList list1=pDAO.getAllCourses(session.getAttribute("username").toString());
            
            for(int i=0;i<list1.size();i=i+2){
        %>
        <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
            <%
            }
            %>
            </select>
            <input type="submit" value="Show" class="form-button">
            </form>
                            </div>
        
        	              </div>