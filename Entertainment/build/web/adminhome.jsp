<%-- 
    Document   : sellerhome
    Created on : 25 Jan, 2019, 8:27:00 PM
    Author     : Satyendra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <li><a href="adminhome.jsp">Home</a></li>
                <li><a href="viewuser.jsp">View Users</a></li>
                <li><a href="viewseller.jsp">View Sellers</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        <!--Menu bar header2 end-->
       
        
        <!--image start-->
        
             <img id="img" src="img/images1.jpg">
        <!--image end-->
        <br>
        <br>
        
        <h2 style="text-align: center;color: red">Welcome Admin</h2>
        
        <%   
  
String name=request.getParameter("sname");  
  
  
session.setAttribute("user",name);  

String name1=(String)session.getAttribute("user"); 

%>


<h3 style='text-align: center'><% out.print("Hello "+name1); %></h3> 

<h4 style='text-align: center'>Your Session Id:
<%
 
String a=session.getId();

out.print(a);
  
  
%> 
<h4> 
        
        <br>
        <br>
        <!--footer start-->
        <div id="footer">
            <h2><b style="color:black">Copyright &COPY;</b> : Entertainment Portal</h2>
            <h3><b style="color:black">Developed by</b> : CDAC Student</h3>
            <h4  >Email : xyz@cdac.in</h4>
        </div>
        <!--footer end-->
    </body>
</html>
