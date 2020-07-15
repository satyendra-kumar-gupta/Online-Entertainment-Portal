package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Blob;
import java.io.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;

public final class viewmovies_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" media=\"all\"/>\n");
      out.write("        <title>Entertainment Portal</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--header1 start-->\n");
      out.write("        <div id=\"header1\">\n");
      out.write("            <h1>Entertainment Portal</h1>\n");
      out.write("        </div>\n");
      out.write("        <!--header1 end-->\n");
      out.write("         <!--Menu bar header2 start-->\n");
      out.write("        <div id=\"header2\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"index.html\">Home</a></li>\n");
      out.write("                <li><a href=\"addmovies.jsp\">View Movies</a></li>\n");
      out.write("                <li><a href=\"addbooks.jsp\">View Books</a></li>\n");
      out.write("                <li><a href=\"index.html\">Logout</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <!--Menu bar header2 end-->\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <!--image start-->\n");
      out.write("        \n");
      out.write("             <img id=\"img\" src=\"img/images1.jpg\">\n");
      out.write("        <!--image end-->\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <h2 style=\"text-align: center; color: red\">View Movies</h2>\n");
      out.write("        \n");

try {

Connection con = null;
Statement stmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root",""); 

stmt = con.createStatement();


rs = stmt.executeQuery("select mid,mname from movies");


      out.write("\n");
      out.write("<TABLE cellpadding=\"15\" align=\"center\"align=\"center\" >\n");

while (rs.next()) {

      out.write("\n");
      out.write("<TR align=\"center\">\n");
      out.write("\n");
      out.write("<TD><a href=\"viewmovies1.jsp?mid=");
      out.print(rs.getInt(1));
      out.write("\">\n");
      out.write("<img src=\"DispalyImg?mid=");
      out.print(rs.getInt(1));
      out.write("\" width=\"95%\" height=\"50%\" />\n");
      out.write("</a></TD>\n");
      out.write("</TR>\n");
      out.write("\n");
      out.write("<TR align=\"center\">\n");
      out.write("\n");
      out.write("<TD><a href=\"viewmovies1.jsp?mid=");
      out.print(rs.getInt(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(2));
      out.write("</a></TD>\n");
      out.write("</TR>\n");
      out.write("\n");

}
rs.close();
stmt.close();
con.close();
} catch (Exception ex) {

      out.write("\n");
      out.write("\n");
      out.write("<FONT size=\"+3\" color=\"red\">\n");

out.println("Unable to connect to database.");
}

      out.write("\n");
      out.write("</FONT>\n");
      out.write("</TABLE>\n");
      out.write("\n");
      out.write("          <!--footer start-->\n");
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
