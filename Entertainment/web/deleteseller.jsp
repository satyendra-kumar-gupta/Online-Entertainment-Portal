<%-- 
    Document   : delete
    Created on : 31 Jan, 2019, 12:26:17 AM
    Author     : Satyendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>



        
        <%
            String id = request.getParameter("d");
            int no=Integer.parseInt(id);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");
            Statement stm=con.createStatement();
           stm.executeUpdate("delete from sellerreg1 where id='"+no+"'");
           response.sendRedirect("viewseller.jsp");
        %>
        
   
