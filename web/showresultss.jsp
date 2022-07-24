
<%@page import="myPackage.classes.Results"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<% String username=(session.getAttribute("username")).toString(); %>

<!-- SIDEBAR -->
			<div class="sidebar" >
				<div class="sidebar-background" style="background-color:rgba(81,191,69,0.98)" >
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
                                                <a href="adm-page.jsp?pgprt=6"><h2>Upload Documents</h2></a>
						<a href="adm-page.jsp?pgprt=5"><h2>View Documents</h2></a>
                                                
						<a href="adm-page.jsp?pgprt=2"><h2>Create Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=9"><h2>View Results</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area" >
                                             <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
            <th scope="col">S no</th>
        	<th scope="col">Student Id</th>
                
            <th scope="col">Total Marks</th>
            <th scope="col">Obtained Marks</th>
            <th scope="col">Status</th>
            
        </tr>
    </thead>
   
                   <%
           if(request.getParameter("coursename")!=null){
               ArrayList list=pDAO.getResults(request.getParameter("coursename"));
      ;
               String coursename=request.getParameter("coursename");
               for(int i=0;i<list.size();i++){
                   Results question=(Results)list.get(i);
                   
                   %>
               
                                                    
                   <tr><td><%=i+1 %></td><td><%=question.getstd_id() %></td> <td><%=question.gettotal_marks() %></td> <td><%=question.getobt_marks() %></td><td><%=question.getstatus() %></td></tr></table>
                                                        
						</div>
			
                   <%
               }
          } %>
       
            