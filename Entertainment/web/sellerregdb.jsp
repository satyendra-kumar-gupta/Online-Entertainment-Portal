<%-- 
    Document   : sellerregdb
    Created on : 28 Jan, 2019, 11:49:52 PM
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
          String sellername = request.getParameter("sname");
          String password = request.getParameter("spass");
          String email = request.getParameter("semail");
          String mobile = request.getParameter("snum");
          String gender = request.getParameter("sgender");
          
          Connection conn=null;
          Statement st=null;
          
          try
          {
           Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");
           st=conn.createStatement();
           
String query="INSERT INTO `sellerreg1` (`id`, `sellername`, `password`, `email`, `mobile`, `gender`) VALUES (NULL, '"+sellername+"', '"+password+"', '"+email+"', '"+mobile+"', '"+gender+"')";

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
        <h4>Click Here For Seller Login:</h4>
        <a href="seller.jsp">Seller login</a>
        </div>
    </body>
</html>
