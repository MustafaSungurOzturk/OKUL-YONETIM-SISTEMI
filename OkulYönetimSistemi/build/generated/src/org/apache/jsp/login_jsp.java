package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    font-family: sans-serif;\n");
      out.write("    background-image: linear-gradient(120deg,#2c3e50,black);\n");
      out.write("    min-height: 100vh;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box{\n");
      out.write("    width: 330px;\n");
      out.write("    padding: 40px;\n");
      out.write("    position: absolute;\n");
      out.write("    top: 50%;\n");
      out.write("    left: 50%;\n");
      out.write("    transform: translate(-50%,-50%);\n");
      out.write("    text-align: center;\n");
      out.write("    background: rgba(0, 0, 0, 0.3);\n");
      out.write("    border-radius: 10%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box input[type=\"text\"],.box input[type=\"password\"]{\n");
      out.write("    border: 0;\n");
      out.write("    background: none;\n");
      out.write("    display: block;\n");
      out.write("    margin: 20px auto;\n");
      out.write("    text-align: center;\n");
      out.write("    border: 2px solid #27ae60;\n");
      out.write("    padding: 14px 10px;\n");
      out.write("    width: 200px;\n");
      out.write("    outline: none;\n");
      out.write("    color: white;\n");
      out.write("    border-radius: 24px;\n");
      out.write("    transition: 0.25s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box h1{\n");
      out.write("    color: white;\n");
      out.write("    text-transform: uppercase;\n");
      out.write("    font-weight: 500;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".box input[type=\"text\"]:focus ,.box input[type=\"password\"]:focus{\n");
      out.write("    width: 260px;\n");
      out.write("    border-color: #2ecc71;\n");
      out.write("}\n");
      out.write(".box input[type=\"submit\"]{\n");
      out.write("    border: 0;\n");
      out.write("    background: none;\n");
      out.write("    display: block;\n");
      out.write("    margin: 20px auto;\n");
      out.write("    text-align: center;\n");
      out.write("    border: 2px solid #27ae60;\n");
      out.write("    padding: 14px 30px;\n");
      out.write("    outline: none;\n");
      out.write("    color: white;\n");
      out.write("    border-radius: 24px;\n");
      out.write("    transition: 0.25s;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".box input[type=\"submit\"]:hover{\n");
      out.write("    background: #27ae60;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    <title>Giriş Sayfası</title>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("            <form method=\"POST\" action=\"loginv.jsp\" class=\"box\">\n");
      out.write("                <h1>GİRİŞ</h1>\n");
      out.write("                <input type=\"text\" id=\"username\" name=\"username\" class=\"form-control\" placeholder=\"Kullanıcı Adı\" size=\"30px\" required>\n");
      out.write("                <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Şifre\" size=\"30px\" required>\n");
      out.write("                <input type=\"submit\" value=\"Giriş Yap\">\n");
      out.write("            </form>    \n");
      out.write("            \n");
      out.write("\n");
      out.write("    \n");
      out.write("   \n");
      out.write("    \n");
      out.write("</body>\n");
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
