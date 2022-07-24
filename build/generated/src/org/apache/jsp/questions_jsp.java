package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;

public final class questions_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      myPackage.DatabaseClass pDAO = null;
      synchronized (_jspx_page_context) {
        pDAO = (myPackage.DatabaseClass) _jspx_page_context.getAttribute("pDAO", PageContext.PAGE_SCOPE);
        if (pDAO == null){
          pDAO = new myPackage.DatabaseClass();
          _jspx_page_context.setAttribute("pDAO", pDAO, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("<!-- SIDEBAR -->\n");
      out.write("\t\t\t<div class=\"sidebar\" >\n");
      out.write("\t\t\t\t<div class=\"sidebar-background\" style=\"background-color:rgba(81,191,69,0.98)\">\n");
      out.write("\t\t\t\t\t<h2 class=\"logo-text\">\n");
      out.write("\t\t\t\t\t\tETUDE\n");
      out.write("\t\t\t\t\t</h2>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"left-menu\">\n");
      out.write("\t\t\t\t\t\t<a  href=\"adm-page.jsp?pgprt=0\"><h2>Profile</h2></a>\n");
      out.write("                                                <a href=\"adm-page.jsp?pgprt=6\"><h2>Upload Documents</h2></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"adm-page.jsp?pgprt=5\"><h2>View Documents</h2></a>\n");
      out.write("                                                \n");
      out.write("\t\t\t\t\t\t<a href=\"adm-page.jsp?pgprt=2\"><h2>Conduct Exam</h2></a>\n");
      out.write("                                                <a class=\"active\" href=\"adm-page.jsp?pgprt=3\"><h2>Add Questions</h2></a>\n");
      out.write("                                                 <a href=\"adm-page.jsp?pgprt=8\"><h2>View Results</h2></a>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("            <!-- CONTENT AREA -->\n");
      out.write("            <div class=\"content-area\" >\n");
      out.write("                            <div class=\"panel form-style-6\" style=\"min-width: 300px;max-width: 390px;float: left;\" >\n");
      out.write("            <form action=\"adm-page.jsp\">\n");
      out.write("                <div class=\"title\">Show All Questions for</div>\n");
      out.write("                <br><br>\n");
      out.write("                <label>Select Course</label>\n");
      out.write("                <input type=\"hidden\" name=\"pgprt\" value=\"4\">\n");
      out.write("                <select name=\"coursename\" class=\"text\">\n");
      out.write("        ");
 
            ArrayList list1=pDAO.getAllCourses(session.getAttribute("username").toString());
            
            for(int i=0;i<list1.size();i=i+2){
        
      out.write("\n");
      out.write("        <option value=\"");
      out.print(list1.get(i));
      out.write('"');
      out.write('>');
      out.print(list1.get(i));
      out.write("</option>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("            </select>\n");
      out.write("            <input type=\"submit\" value=\"Show\" class=\"form-button\">\n");
      out.write("            </form>\n");
      out.write("                            </div>\n");
      out.write("        \n");
      out.write("        <div class=\"panel form-style-6\" style=\"max-width: 500!important;float: right\">   \n");
      out.write("               <form action=\"controller.jsp\" >\n");
      out.write("                   <div class=\"title\">Add New Question</div>\n");
      out.write("                   <table >\n");
      out.write("                       <tr>\n");
      out.write("                           <td><label>Course Name</label></td>\n");
      out.write("                           <td colspan=\"3\"> \n");
      out.write("                               <select name=\"coursename\" class=\"text\">\n");
      out.write("        ");
 
            ArrayList list=pDAO.getAllCourses(session.getAttribute("username").toString());
            
            for(int i=0;i<list.size();i=i+2){
        
      out.write("\n");
      out.write("        <option value=\"");
      out.print(list.get(i));
      out.write('"');
      out.write('>');
      out.print(list.get(i));
      out.write("</option>\n");
      out.write("            ");

            }
            
      out.write("\n");
      out.write("            </select>\n");
      out.write("                           </td>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                           <td><label>Your Question:</label></td>\n");
      out.write("                           <td colspan=\"4\"><input type=\"text\" name=\"question\" class=\"text\" placeholder=\"Type your question here\" style=\"width: 420px;\" ></td><br>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                           <td><label>Options</label></td>\n");
      out.write("                           <td><input type=\"text\" name=\"opt1\" class=\"text\" placeholder=\"First Option\" style=\"width: 130px;\" ></td>\n");
      out.write("                           <td><input type=\"text\" name=\"opt2\" class=\"text\" placeholder=\"Second Option\" style=\"width: 130px;\" ></td>\n");
      out.write("                           <td><input type=\"text\" name=\"opt3\" class=\"text\" placeholder=\"Third Option\" style=\"width: 130px;\" ></td>\n");
      out.write("                           <td><input type=\"text\" name=\"opt4\" class=\"text\" placeholder=\"Fourth Option\" style=\"width: 130px;\" ></td>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                           <td><label>Correct Answer</label></td>\n");
      out.write("                           <td colspan=\"4\"><center><input type=\"text\" name=\"correct\" class=\"text\" placeholder=\"Correct Answer\" style=\"width: 130px;\" ></center></td>\n");
      out.write("                       <tr>\n");
      out.write("                           <td colspan=\"5\"><input type=\"hidden\" name=\"page\" value=\"questions\">\n");
      out.write("                    <input type=\"hidden\" name=\"operation\" value=\"addnew\">\n");
      out.write("                       <center><input type=\"submit\" class=\"form-button\" value=\"Add\" name=\"submit\"></center></td>\n");
      out.write("                           \n");
      out.write("                   </tr>\n");
      out.write("                   </table>\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("           \n");
      out.write("    \n");
      out.write("     </div>\n");
      out.write("                        </div>");
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
