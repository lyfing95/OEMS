/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.64
 * Generated at: 2018-12-01 02:41:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class loginadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html >\r\n");
      out.write("<head>\r\n");
      out.write("<title>管理员登录</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<link  rel=\"stylesheet\" href=\"static/css/bootstrap.min.css\"> \r\n");
      out.write("<script src=\"static/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script src=\"static/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(function(){\r\n");
      out.write("$(\"#valiImage\").click(function(){\r\n");
      out.write("\t   var timeStr = new Date().getTime();\r\n");
      out.write("\t   var url = \"valistr.do?time=\"+timeStr;\r\n");
      out.write("\t   $(\"#valiImage\").attr(\"src\",url);\r\n");
      out.write("}); \r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"ui\" style=\"text-align:center;\">\r\n");
      out.write("\t<div class=\"user \">\r\n");
      out.write("\t<div class=\"logo\" style=\"margin-bottom: 50px;margin-top: 50px;\">\r\n");
      out.write("\t<a href=#>\r\n");
      out.write("\t<img src=\"static/images/1.jpg\" width=\"204px\" class=\"img-rounded\"></a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<h2>oems管理员登录</h2>\r\n");
      out.write("\t<!-- uiView:  -->\r\n");
      out.write("\t<div data-ui-view=\"\" class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container-fluid full \">\r\n");
      out.write("\t<form id=\"login1\" action=\"adminlogin.do\" method=\"post\" \r\n");
      out.write("\t\t\t\t\t\tclass=\"form col-md-4 col-md-offset-4 \">\r\n");
      out.write("\t\t\t\t\t\t<label for=\"username\" class=\"col-md-3 control-label\">用户名</label>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\" >\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"username\" name=\"username\" type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"form-control input-lg\" placeholder=\"用户名\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<label for=\"password\" class=\"col-md-3 control-label\">密码</label>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"password\" name=\"password\" type=\"password\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"form-control input-lg\" placeholder=\"登录密码\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<label class=\"col-md-3 control-label\"\r\n");
      out.write("\t\t\t\t\tfor=\"varcode\">验证码</label> <br><input class=\"form-control input-lg\" id=\"varcode\"\r\n");
      out.write("\t\t\t\t\ttype=\"text\" name=\"varcode\" ><img  id=\"valiImage\" alt=\"验证码\" src=\"valistr.do\"> <br>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<div id=\"loginInfo\"><b style='color:red;font-size:15px;'>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${msg }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</b></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<button id=\"submit1\" class=\"btn btn-primary btn-lg btn-block\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttype=\"button\" onclick=\"validatePassword()\">立刻登录</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t<a class=\"icon-ic_login_backhome\" href=\"index.do\">\r\n");
      out.write("\t返回首页</a>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tfunction validatePassword() {\r\n");
      out.write("\t\t\tvar username = $(\"#username\").val();\r\n");
      out.write("\t\t\tvar password = $(\"#password\").val();\r\n");
      out.write("\t\t\tvar varcode = $(\"#varcode\").val();\r\n");
      out.write("\t\t\tvar isok = true;\r\n");
      out.write("\t\t\t/* 判断用户名密码是否为空 */\r\n");
      out.write("\t\t\tif (username == \"\") {\r\n");
      out.write("\t\t\t\t$(\"#loginInfo\").html(\r\n");
      out.write("\t\t\t\t\t\t\"<b style='color:red;font-size:15px;'>用户名不能为空！</b>\");\r\n");
      out.write("\t\t\t\t$(\"#username\").focus();\r\n");
      out.write("\t\t\t\tisok = false;\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (password == \"\") {\r\n");
      out.write("\t\t\t\t$(\"#loginInfo\").html(\r\n");
      out.write("\t\t\t\t\t\t\"<b style='color:red;font-size:15px;'>密码不能为空！</b>\");\r\n");
      out.write("\t\t\t\t$(\"#password\").focus();\r\n");
      out.write("\t\t\t\tisok = false;\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (varcode == \"\") {\r\n");
      out.write("\t\t\t\t$(\"#loginInfo\").html(\r\n");
      out.write("\t\t\t\t\t\t\"<b style='color:red;font-size:15px;'>验证码不能为空！</b>\");\r\n");
      out.write("\t\t\t\t$(\"#varcode\").focus();\r\n");
      out.write("\t\t\t\tisok = false;\r\n");
      out.write("\t\t\t\treturn;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tif (isok) {\r\n");
      out.write("\t\t\t\t$(\"#login1\").submit();\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write("\t<footer style=\"text-align: center\">\r\n");
      out.write("    <hr>\r\n");
      out.write("<p class=\"am-padding-left\">© 2018 <a href=\"#\">达内北京海淀基地</a></p>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("\t</html>");
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
