package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userreg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" media=\"all\"/>\n");
      out.write("        <title>Entertainment Portal</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <!--header1 start-->\n");
      out.write("        <div id=\"header1\">\n");
      out.write("            <h1>Entertainment Portal</h1>\n");
      out.write("        </div>\n");
      out.write("        <!--header1 end-->\n");
      out.write("         <!--Menu bar header2 start-->\n");
      out.write("        <div id=\"header2\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                <li><a href=\"admin.jsp\">Admin</a></li>\n");
      out.write("                <li><a href=\"seller.jsp\">Seller</a></li>\n");
      out.write("                <li><a href=\"user.jsp\">User</a></li>\n");
      out.write("                <li><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <!--Menu bar header2 end-->\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <!--image start-->\n");
      out.write("        \n");
      out.write("             <img id=\"img\" src=\"img/images1.jpg\">\n");
      out.write("        <!--image end-->\n");
      out.write("        \n");
      out.write("        <!--Seller Form Begins-->\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <form method=\"post\" action=\"registration.jsp\">\n");
      out.write("            <center>\n");
      out.write("            <table border=\"1\" width=\"30%\" cellpadding=\"5\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"2\">User Registration</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>User Name:</td>\n");
      out.write("                        <td><input type=\"text\" name=\"uname\" value=\"\" required=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password:</td>\n");
      out.write("                        <td><input type=\"password\" name=\"upass\" value=\"\" required=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Email:</td>\n");
      out.write("                        <td><input type=\"email\" name=\"uemail\" value=\"\" required=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Mobile:</td>\n");
      out.write("                        <td><input type=\"number\" name=\"unum\" value=\"\" required=\"\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Gender</td>\n");
      out.write("                        <td><input type=\"radio\" name=\"gender\" value=\"male\" checked=\"\"> Male<br>\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"female\"> Female<br>\n");
      out.write("                            <input type=\"radio\" name=\"gender\" value=\"other\"> Other</td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"submit\" value=\"Register\" /></td>\n");
      out.write("                        <td><input type=\"reset\" value=\"Reset\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\">Already registered!! <a href=\"user.jsp\">Login Here</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            </center>\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <!--User Form Ends-->\n");
      out.write("        \n");
      out.write("         <!--footer start-->\n");
      out.write("        <div id=\"footer\">\n");
      out.write("            <h2><b style=\"color:black\">Copyright &COPY;</b> : Entertainment Portal</h2>\n");
      out.write("            <h3><b style=\"color:black\">Developed by</b> : CDAC Student</h3>\n");
      out.write("            <h4  >Email : xyz@cdac.in</h4>\n");
      out.write("        </div>\n");
      out.write("        <!--footer end-->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
