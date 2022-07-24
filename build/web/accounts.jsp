
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Examination System
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>
                                                <a href="upload_form.jsp"><h2>Upload Documents</h2></a>
						<a href="fac_view_own.jsp"><h2>View Documents</h2></a>
                                                <a href="adm-page.jsp?pgprt=2"><h2>Create Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
							</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
	 
               
               
               
    