<%-- 
    Document   : viewmovies
    Created on : 25 Jan, 2019, 9:10:01 PM
    Author     : Satyendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" media="all"/>
        <title>Entertainment Portal</title>
    </head>
    <body>
        <!--header1 start-->
        <div id="header1">
            <h1>Entertainment Portal</h1>
        </div>
        <!--header1 end-->
         <!--Menu bar header2 start-->
        <div id="header2">
            <ul>
                <li><a href="userhome.jsp">Home</a></li>
                <li><a href="viewmovies.jsp">View Movies</a></li>
                <li><a href="viewbooks.jsp">View Books</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        <!--Menu bar header2 end-->
       
        
        <!--image start-->
        
             <img id="img" src="img/images1.jpg">
        <!--image end-->
        <br>
        <br>
        <h2 style="text-align: center; color: red">View Movies</h2>
        
<%
try {

Connection con = null;
Statement stmt = null;
ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver");

con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root",""); 

stmt = con.createStatement();


rs = stmt.executeQuery("select mid,mname from movies");

%>
<TABLE cellpadding="15" align="center"align="center" >
<%
while (rs.next()) {
%>
<TR align="center">

<TD><a href="viewmovies1.jsp?mid=<%=rs.getInt(1)%>">
<img src="DispalyImg?mid=<%=rs.getInt(1)%>" width="95%" height="50%" />
</a></TD>
</TR>

<TR align="center">

<TD><a href="viewmovies1.jsp?mid=<%=rs.getInt(1)%>"><%=rs.getString(2)%></a></TD>
</TR>

<%
}
rs.close();
stmt.close();
con.close();
} catch (Exception ex) {
%>

<FONT size="+3" color="red">
<%
out.println("Unable to connect to database.");
}
%>
</FONT>
</TABLE>

          <!--footer start-->
        <div id="footer">
            <h2><b style="color:black">Copyright &COPY;</b> : Entertainment Portal</h2>
            <h3><b style="color:black">Developed by</b> : CDAC Student</h3>
            <h4  >Email : xyz@cdac.in</h4>
        </div>
        <!--footer end-->
    </body>
</html>
