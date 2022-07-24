
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
				<div class="sidebar-background" style="background-color:rgba(81,191,69,0.98)" >
					<h2 class="logo-text">
						ETUDE
					</h2>

					<div class="left-menu" >
						<a  href="adm-page.jsp?pgprt=0"><h2>Profile</h2></a>    
                                                <a href="adm-page.jsp?pgprt=6"><h2>Upload Documents</h2></a>
						<a href="adm-page.jsp?pgprt=5"><h2>View Documents</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=2"><h2>Conduct Exam</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>Add Questions</h2></a>
                                                 <a href="adm-page.jsp?pgprt=7"><h2>View Results</h2></a>
					
						</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area" >
                            
                            <div class="panel" style="max-width: 420px;float:right">
                                <div class="title">
                                   All Courses
                                </div>
                                <table id="one-column-emphasis" style="min-width: 400px;margin: 5px; margin-top: 35px" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">Courses</th>
                
            <th scope="col">T.Marks</th>
            <th scope="col">Action</th>
            
        </tr>
    </thead>
    
                                   
        <% 
            try {
                Class.forName("com.mysql.jdbc.Driver");
          Connection  conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system","root","root");
       
             String sql="SELECT * from courses ";
            PreparedStatement pstm=conn.prepareStatement(sql);
          
            ResultSet rs=pstm.executeQuery();
             while(rs.next()){
              String name= rs.getString(1);
            //    out.println(name);
         // out.println(session.getAttribute("username"));
            ArrayList list=pDAO.getAllCourses(session.getAttribute("username").toString());
             if(name.equals(session.getAttribute("username")))
                {
            for(int i=0;i<list.size();i=i+2){
                
             
        %>
        <tr>
        <td><%=list.get(i)%></td>
        <td><%=list.get(i+1)%></td>
        <td ><a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" 
                onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
            </a></td>
    </tr>
            <%
            }
}
  }         
  pstm.close();
       
}
catch (SQLException ex) {
            Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);
        }
            %>
            </table>
        </div>
        <div  class="panel form-style-6" style="max-width: 450px; float:left;" >
           <div class="title">
                                   Add New Course
                                </div>
            <center>
               <form action="controller.jsp" >
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
                           <td><label>Total Marks</label></td>
                           <td><input type="text" name="totalmarks" class="text" placeholder="Total Marks" style="width: 230px;" ></td>
                       </tr>
                       <tr>
                           <td><label>Exam Time</label></td>
                           <td>
                                <input type="text" name="time" class="text" placeholder="MM" style="width: 230px;" >
                           </td>
                           
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
                       