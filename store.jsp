<%@ page import = "java.sql.*"%>
<%
String email = request.getParameter("remail");
String username = request.getParameter("rusername");
String pass = request.getParameter("rpassword");
String pass1 = request.getParameter("rconfirmpassword");
HttpSession sess = request.getSession(); 
sess.setAttribute("rusername", username);
if(pass.equals(pass1))
{
    try{
        Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","123456");
        PreparedStatement ps = conn.prepareStatement("insert into Regi values(?,?,?)");
        ps.setString(1,email);
        ps.setString(2,username);
        ps.setString(3,pass);
        int x = ps.executeUpdate();
        if(x!=0){
            response.sendRedirect("main1.html");
        }
        else{
            out.print("Something went wrong...");
        }
    }
    catch(Exception e){
        out.print(e);
    }
    
}
else{
    out.print("Password not matching...");
}
%>