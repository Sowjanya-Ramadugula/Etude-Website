package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import myPackage.classes.User;
import java.util.ArrayList;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      myPackage.DatabaseClass pDAO = null;
      synchronized (_jspx_page_context) {
        pDAO = (myPackage.DatabaseClass) _jspx_page_context.getAttribute("pDAO", PageContext.PAGE_SCOPE);
        if (pDAO == null){
          pDAO = new myPackage.DatabaseClass();
          _jspx_page_context.setAttribute("pDAO", pDAO, PageContext.PAGE_SCOPE);
        }
      }
      out.write('\n');
      out.write('\n');

           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("admin")){
        
      out.write("\n");
      out.write("        ");
            String userId=session.getAttribute("userId").toString();
// session.setAttribute("userId",pDAO.getUserId(request.getParameter("username")));
   
      out.write("\n");
      out.write("         <!-- SIDEBAR -->\n");
      out.write("\t\t\t<div class=\"sidebar\"  >\n");
      out.write("\t\t\t\t<div class=\"sidebar-background\"  >\n");
      out.write("\t\t\t\t\t<h2 class=\"logo-text\">\n");
      out.write("\t\t\t\t\t\tETUDE\n");
      out.write("\t\t\t\t\t</h2>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"left-menu\">\n");
      out.write("\t\t\t\t\t\t<a class=\"active\" href=\"adm-page.jsp?pgprt=0\"><h2>Profile</h2></a>\n");
      out.write("                                                <a href=\"adm-page.jsp?pgprt=6\"><h2>Upload Documents</h2></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"adm-page.jsp?pgprt=5\"><h2>View Documents</h2></a>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<a href=\"adm-page.jsp?pgprt=2\"><h2>Create Exam</h2></a>\n");
      out.write("                                                <a href=\"adm-page.jsp?pgprt=3\"><h2>Add Questions</h2></a>\n");
      out.write("                                                <a href=\"adm-page.jsp?pgprt=8\"><h2>View Results</h2></a>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("            <!-- CONTENT AREA -->\n");
      out.write("\t\t\t<div class=\"content-area\" >\n");
      out.write("                            <div class=\"panel\" style=\"float: left;max-width: 600px\">\n");
      out.write("        \n");
      out.write("                                \n");
      out.write("        \n");
      out.write("            ");

           }else{
               
      out.write("\n");
      out.write("               \n");
      out.write("               <!-- SIDEBAR -->\n");
      out.write("\t\t\t<div class=\"sidebar\" >\n");
      out.write("\t\t\t\t<div class=\"sidebar-background\" style=\"background-color:rgba(81,191,69,0.98)\" >\n");
      out.write("\t\t\t\t\t<h2 class=\"logo-text\">\n");
      out.write("\t\t\t\t\t\tETUDE\n");
      out.write("\t\t\t\t\t</h2>\n");
      out.write("\t\t\t\t\t<div class=\"left-menu\">\n");
      out.write("\t\t\t\t\t\t<a class=\"active\" href=\"std-page.jsp?pgprt=0\"><h2>Profile</h2></a>\n");
      out.write("                                                <a href=\"std-page.jsp?pgprt=3\"><h2>View Materials</h2></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"std-page.jsp?pgprt=1\"><h2>Write Exam</h2></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"std-page.jsp?pgprt=2\"><h2>View Results</h2></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\n");
      out.write("                       </div>\n");
      out.write("               <!-- CONTENT AREA -->\n");
      out.write("\t\t\t<div class=\"content-area\">\n");
      out.write("                            <div class=\"panel\"  style=\"float: left;max-width: 600px; \">\n");
      out.write("               ");

           }
           if(request.getParameter("pedt")==null){
           
      out.write("\n");
      out.write("           <div class=\"title\">Profile</div>\n");
      out.write("           <div class=\"profile \">\n");
      out.write("               <h2><span class=\"tag\">Your Name</span><span class=\"val\">");
      out.print(user.getFirstName()+" " );
      out.print(user.getLastName() );
      out.write("</span><br/>\n");
      out.write("               <span class=\"tag\">Email</span><span class=\"val\">");
      out.print(user.getEmail() );
      out.write("</span><br/>\n");
      out.write("               <span class=\"tag\">Contact No</span><span class=\"val\">");
      out.print(user.getContact() );
      out.write("</span><br/>\n");
      out.write("               <span class=\"tag\">City</span><span class=\"val\">");
      out.print(user.getCity() );
      out.write("</span><br/>\n");
      out.write("               <span class=\"tag\">Address</span><span class=\"val\">");
      out.print(user.getAddress() );
      out.write("</span></h2>\n");
      out.write("           </div>\n");
      out.write("               ");

               if(user.getType().equals("admin")){
               
      out.write("\n");
      out.write("               <br/>\n");
      out.write("               <a href=\"adm-page.jsp?pgprt=0&pedt=1\"><span class=\"add-btn\">Edit Profile</span></a>\n");
      out.write("               ");
 
               }else{
               
      out.write("<br/>\n");
      out.write("               <a href=\"std-page.jsp?pgprt=0&pedt=1\"><span class=\"add-btn\">Edit Profile</span></a>\n");
      out.write("               ");
 
               }
               
      out.write("\n");
      out.write("           \n");
      out.write("           ");

           }else{
               
      out.write("\n");
      out.write("               \n");
      out.write("               <!-- Start of Edit Form --->\n");
      out.write("               <div class=\"title\">Edit Profile</div>\n");
      out.write("               <div class=\"central-div form-style-6\" style=\"position:inherit;margin-top: 70px;\" >\n");
      out.write("                    <form action=\"controller.jsp\">\n");
      out.write("                        <input type=\"hidden\" name=\"page\" value=\"profile\"> \n");
      out.write("                        <input type=\"hidden\" name=\"utype\" value=\"");
      out.print(user.getType());
      out.write("\">\n");
      out.write("\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>First Name</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" name=\"fname\" value=\"");
      out.print(user.getFirstName() );
      out.write("\" class=\"text\" placeholder=\"First Name\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Last Name</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\"  name=\"lname\" value=\"");
      out.print(user.getLastName() );
      out.write("\" class=\"text\" placeholder=\"Last Name\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>User Name</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" name=\"uname\" value=\"");
      out.print(user.getUserName() );
      out.write("\" class=\"text\" placeholder=\"User Name\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Email</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"email\" name=\"email\" value=\"");
      out.print(user.getEmail() );
      out.write("\" class=\"text\" placeholder=\"Email\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Password</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"password\" value=\"");
      out.print(user.getPassword() );
      out.write("\" name=\"pass\" class=\"text\" placeholder=\"Password\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("                                        <tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Contact No</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" name=\"contactno\" value=\"");
      out.print(user.getContact() );
      out.write("\" class=\"text\" placeholder=\"Contact No\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("                                        <tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>City</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" name=\"city\" value=\"");
      out.print(user.getCity() );
      out.write("\" class=\"text\" placeholder=\"City\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("                                        <tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<label>Address</label>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("                                                    <input type=\"text\" name=\"address\" value=\"");
      out.print(user.getAddress() );
      out.write("\" class=\"text\" placeholder=\"Address\">\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t\t\t<center>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Done\" class=\"button\">\n");
      out.write("\t\t\t\t\t\t\t</center>\n");
      out.write("\t\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t</table>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("                \n");
      out.write("               ");

           }
           
      out.write("\n");
      out.write("    \n");
      out.write("        </div>\n");
      out.write("    </div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
