
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
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>    
                                                <a class="active" href="adm=page?pgprt=6"><h2>Upload Documents</h2></a>
						<a href="adm-page.jsp?pgprt=5"><h2>View Documents</h2></a>
						<a  href="adm-page.jsp?pgprt=2"><h2>Conduct Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
						</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            
                    
        
        <div  class="panel form-style-6" style="max-width: 450px;float:right"  >
           <div class="title">
                                   Upload Materials
                                </div>
            <center>
               <form method="post" action="UploadFileController" enctype="multipart/form-data">
            <br>
                   <table >
                        <tr>
                           <td><label>Employee Id</label></td>
                           <td> <input type="text" name="Emp_Id" class="text" placeholder="Employee Id"  style="width: 230px;"></td>
                       </tr>
                       <tr>
                      <tr>

<td>      <label for="department"><b>Department:</b></label></td>

      <td><select name="department" style="width: 230px;">
      <option value="APPLIED ENGINEERING">APPLIED ENGINEERING</option>
      <option value="BIOTECHNOLOGY">BIOTECHNOLOGY</option>
      <option value="CHEMICAL ENGINEERING">CHEMICAL ENGINEERING</option>
      <option value="CIVIL ENGINEERING">CIVIL ENGINEERING</option>
      <option value="CSE">CSE</option>
      <option value="ECE">ECE</option>
      <option value="EEE">EEE</option>
      <option value="MECHANICAL ENGINEERING">MECHANICAL ENGINEERING</option>
      <option value="INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
      <option value="MBA">MBA</option>
      <option value="SCIENCE AND HUMANITIES">SCIENCE AND HUMANITIES</option>
      <option value="PHARMACEUTICAL SCIENCES">PHARMACEUTICAL SCIENCES</option>
      </select>
                       <tr>
                           <td><label>Subject Name</label></td>
                           <td> <input type="text" name="coursename" class="text" placeholder="Subject Name"  style="width: 230px;"></td>
                       </tr>
                       
                       <tr>
                           <td><label>Year</label></td>
                           <td><input type="text" name="year" class="text" placeholder="" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                            <td>Choose File : </td>
                            <td><input type="file" name="file_uploaded" /></td>
                       
                       </tr>
                       <tr>
                           <td colspan="2"><input type="hidden" name="page" value="courses">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="Add" name="submit"></center></td>
                       </tr>
                   </table>

                </form>
            </center>
           
    </div>
                            </div>
     
                       