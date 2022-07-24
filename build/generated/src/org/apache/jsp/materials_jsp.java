package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class materials_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<title>JSP Page</title>\n");
      out.write("<style>\n");
      out.write("fieldset\n");
      out.write("{\n");
      out.write("      width: 70px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<form action=\"Upload\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("<fieldset>\n");
      out.write("<table>\n");
      out.write("   <tr> <td> <label for=\"name\"><b>Subject Name:</b></label></td>\n");
      out.write("<td>  <input type=\"text\" placeholder=\"Enter Subject Name\" name=\"subname\" required ><br></td></tr>\n");
      out.write("<tr>\n");
      out.write("<td>      <label for=\"employee id\"><b>Subject Id:</b></label></td>\n");
      out.write("  <td>    <input type=\"text\" placeholder=\"Enter Subject Id\" name=\"subid\" required ><br></td></tr>\n");
      out.write("<tr>\n");
      out.write("<td>      <label for=\"Unit \"><b>Unit:</b></label></td>\n");
      out.write("  <td>    <input type=\"text\" placeholder=\"Enter Unit Name\" name=\"unit\" required ><br></td></tr>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("<td>      <label for=\"department\"><b>Department:</b></label></td>\n");
      out.write("\n");
      out.write("      <td><select name=\"departments\">\n");
      out.write("      <option value=\"APPLIED ENGINEERING\">APPLIED ENGINEERING</option>\n");
      out.write("      <option value=\"BIOTECHNOLOGY\">BIOTECHNOLOGY</option>\n");
      out.write("      <option value=\"CHEMICAL ENGINEERING\">CHEMICAL ENGINEERING</option>\n");
      out.write("      <option value=\"CIVIL ENGINEERING\">CIVIL ENGINEERING</option>\n");
      out.write("      <option value=\"CSE\">CSE</option>\n");
      out.write("      <option value=\"ECE\">ECE</option>\n");
      out.write("      <option value=\"EEE\">EEE</option>\n");
      out.write("      <option value=\"MECHANICAL ENGINEERING\">MECHANICAL ENGINEERING</option>\n");
      out.write("      <option value=\"INFORMATION TECHNOLOGY\">INFORMATION TECHNOLOGY</option>\n");
      out.write("      <option value=\"MBA\">MBA</option>\n");
      out.write("      <option value=\"SCIENCE AND HUMANITIES\">SCIENCE AND HUMANITIES</option>\n");
      out.write("      <option value=\"PHARMACEUTICAL SCIENCES\">PHARMACEUTICAL SCIENCES</option>\n");
      out.write("      </select>\n");
      out.write("<br></td>\n");
      out.write("\n");
      out.write("<tr>\n");
      out.write("<td>Upload materials</td>\n");
      out.write("<td><input type=\"file\" name=\"material\"></td>\n");
      out.write("</tr>\n");
      out.write("<td><input type=\"submit\" value=\"Upload\"></td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</fieldset>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
