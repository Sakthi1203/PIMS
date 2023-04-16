<%@ page import = "java.sql.*"%>

<%
String username = request.getParameter("rusername");
String password = request.getParameter("rpassword");
HttpSession sess = request.getSession(); 
sess.setAttribute("rusername", username);
try{
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","123456");
    String sql = "select * from Regi where rusername=? and rpassword=?";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, username);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();
    if (rs.next())
    {
        response.sendRedirect("view1.jsp");
    } 
    else 
    {
        out.print("Incorrect username or password!");
    }
    if (username == "" || password == "") 
    {
        out.print("<body>Username or password cannot be empty!</body>");
    }
}
catch(Exception e)
{
    out.print(e);
}
%>



