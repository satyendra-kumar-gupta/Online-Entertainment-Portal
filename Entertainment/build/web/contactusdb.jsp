<%-- 
    Document   : contactusdb
    Created on : 30 Jan, 2019, 3:24:22 PM
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
          String name = request.getParameter("sname");
          String email = request.getParameter("semail");
          String mobile = request.getParameter("snum");
          String message = request.getParameter("msg");
          
          Connection conn=null;
          Statement st=null;
          
          try
          {
           Class.forName("com.mysql.jdbc.Driver");
           conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");
           st=conn.createStatement();
           

String query="INSERT INTO `contactus` (`id`, `name`, `email`, `mobile`, `message`) VALUES (NULL, '"+name+"', '"+email+"', '"+mobile+"', '"+message+"')";

           st.executeUpdate(query);
          out.print("<center><h3>We have received your request, we will contact you as soon as possible...!!<h3> </center>");
          
          }
          catch(Exception ex)
          {
           out.print(ex);
           
          }

        %>
        <br>
        <br>
        <div>
        
        <h4>click here for home page..</h4>
        <a href="index.html">Home Page</a>
        </div>
    </body>
</html>
