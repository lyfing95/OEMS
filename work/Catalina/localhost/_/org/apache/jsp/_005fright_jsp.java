/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.64
 * Generated at: 2018-12-01 02:42:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class _005fright_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>_left</title>\r\n");
      out.write("\t\t<meta charset=\"utf-8\"/>\r\n");
      out.write("\t\t<style type=\"text/css\">\r\n");
      out.write("\t\t\t/* css样式 */\r\n");
      out.write("\t\t\tbody{\r\n");
      out.write("\t\t\t\tbackground-color: #EDEDED;\r\n");
      out.write("\t\t\t\tfont-family: \"微软雅黑\";\r\n");
      out.write("\t\t\t\tfont-size: 14px;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t#wel{\r\n");
      out.write("\t\t\t\ttext-align: center;\r\n");
      out.write("\t\t\t\tpadding: 180px 0px;\r\n");
      out.write("\t\t\t\tfont-size: 36px;\r\n");
      out.write("\t\t\t\tcolor: #686868;\r\n");
      out.write("\t\t\t\ttext-shadow: 5px 5px 5px #444444;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t\t<script src=\"static/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script src=\"static/js/bootstrap.min.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("\thref=\"static/css/bootstrap.min.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("\thref=\"static/css/bootstrapValidator.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("\thref=\"static/bootstrap-3.3.7-dist/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("\thref=\"static/css/bootstrapValidator.css\">\r\n");
      out.write("<script type=\"text/javascript\" src=\"static/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"static/bootstrap-3.3.7-dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body margin=\"0\">\r\n");
      out.write("\t\t<!-- <div id=\"wel\">OEMS后台管理</div>\t -->\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t<div class=\"row clearfix\">\r\n");
      out.write("\t\t<div class=\"col-md-12 column\">\r\n");
      out.write("\t\t\t<div class=\"jumbotron\">\r\n");
      out.write("\t\t\t\t<h1>\r\n");
      out.write("\t\t\t\t\t歡迎來到OEMS后台管理\r\n");
      out.write("\t\t\t\t</h1>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\tOEMS(Online examination management system)是一款简单易用的在綫考試管理系統\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t <a class=\"btn btn-primary btn-large\" href=\"#\">Learn more</a>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
