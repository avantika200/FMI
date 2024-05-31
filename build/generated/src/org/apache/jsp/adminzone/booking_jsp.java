package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import dbpack.DbManager;

public final class booking_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Farmer Merchant Integration</title>\n");
      out.write("        <link href=\"../css/bootstrap.css\" rel=\"stylesheet\"/>\n");
      out.write("        <script src=\"../js/bootstrap.bundle.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"row mt-2\">\n");
      out.write("                <div class=\"col-sm-12\" style=\"min-height: 600px;background-color: aliceblue;\">\n");
      out.write("                    <h2 style=\"color:blue;text-align:center;\">List Of Farmers</h2>\n");
      out.write("                    <table class=\"table table-bordered\">\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Reg.Id</th>\n");
      out.write("                            <th>Name</th>\n");
      out.write("                            <th>Village</th>\n");
      out.write("                            <th>Post</th>\n");
      out.write("                            <th>District</th>\n");
      out.write("                            <th>State</th>\n");
      out.write("                            <th>Pin Code</th>\n");
      out.write("                            <th>Contact No</th>\n");
      out.write("                            <th>Aadhar No</th>\n");
      out.write("                            <th>Book</th>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                            DbManager dm=new DbManager();
                            ResultSet rs=dm.select("select * from farmerinfo");
                            while(rs.next())                        
                            {
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(rs.getString("regid"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("name"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("village"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("post"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("district"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("state"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("pincode"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("contactno"));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString("aadharno"));
      out.write("</td>\n");
      out.write("                            <td>\n");
      out.write("                                <a href=\"validate.jsp?ano=");
      out.print(rs.getString("aadharno"));
      out.write("\">\n");
      out.write("                                    <button class=\"btn btn-success\">Book</button>\n");
      out.write("                                </a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
  }  
      out.write("\n");
      out.write("                            \n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\" style=\"height:80px;background-color:black;color:white;font-size:25px;text-align:center;line-height:80px;\">\n");
      out.write("                    Copyright &copy; to Farmer Merchant Integration\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\" style=\"height:80px;background-color:navy;color:white;font-size:25px;text-align:center;line-height:80px;\">\n");
      out.write("                    Developed By:- Brijesh Mishra\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
 } 
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
