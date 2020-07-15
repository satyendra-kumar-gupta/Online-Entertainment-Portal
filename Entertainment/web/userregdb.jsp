<%-- 
    Document   : userregdb
    Created on : 30 Jan, 2019, 12:58:59 PM
    Author     : Satyendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entertainment Portal</title>
    </head>
    <body>
        <%
          String username = request.getParameter("uname");
          String password = request.getParameter("upass");
          String email = request.getParameter("uemail");
          String mobile = request.getParameter("unum");
          String gender = request.getParameter("ugender");
          
          Connection conn=null;
          Statement st=null;
          
          try
          {
           Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");
           st=conn.createStatement();
           
String query="INSERT INTO `userreg1` (`id`, `username`, `password`, `email`, `mobile`, `gender`) VALUES (NULL, '"+username+"', '"+password+"', '"+email+"', '"+mobile+"', '"+gender+"')";

           st.executeUpdate(query);
          out.print("<center><h3>Successfully registered....<h3> </center>");
          
          }
          catch(Exception ex)
          {
           out.print(ex);
           
          }

        %>
        
        <br>
        <br>
        <div>
        <h4>Click Here For User Login:</h4>
        <a href="user.jsp">User login</a>
        </div>
    </body>
</html>
