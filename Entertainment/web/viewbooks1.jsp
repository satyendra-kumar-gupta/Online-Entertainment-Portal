<%-- 
    Document   : viewmovies1
    Created on : 25 Jan, 2019, 9:16:03 PM
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
<%@ page import="javax.servlet.ServletOutputStream"%>


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
        
        <%
    String sr=request.getParameter("bid");
		int no=Integer.parseInt(sr);
		
                String bname=null;
                String bprice=null;
                String bauthor=null;
                
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root",""); // localhost:<defaultport>
				
			stmt = con.createStatement();
			rs = stmt.executeQuery("select bname,bprice,bauthor from books where bid="+no);
			if (rs.next()) {
				bname= rs.getString(1);
                                bprice = rs.getString(2);
                                bauthor = rs.getString(3);
			
			} else {
				response.setContentType("text/html");

				out.println("<font color='red'>image not found for given id :</font>"+no);

				return;
			}
%>

    
        
        <form method="post" action="purchasebook.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Books Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name:</td>
                        <td><%=bname%></td>
                    </tr>
                    
                    <tr>
                        <td>Price:</td>
                        <td><%=bprice%></td>
                    </tr>
                    <tr>
                        <td>Author:</td>
                        <td><%=bauthor%></td>
                    </tr>
                    
                    
                     </tbody>
            </table>
                    <br>
               <%-- <h2>Book image here </h2> --%>
                <input type="submit" value="Purchase" />
                        
                    
            </center>
            
            
        </form>
                    <%
}
                 catch (Exception e) {
		response.setContentType("text/html");
		out.println("<html><head><title>Unable To Display image</title></head>");
		out.println("<body><h4><font color='red'>Image Display Error= " +e.getMessage()+" </font></h4></body></html>");
                return;
		}
%>
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
