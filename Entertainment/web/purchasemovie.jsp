<%-- 
    Document   : purchase
    Created on : 25 Jan, 2019, 10:34:43 PM
    Author     : Satyendra


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="java.sql.Blob" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<%@ page import="javax.servlet.ServletOutputStream"%>

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
                <li><a href="index.html">Home</a></li>
                <li><a href="viewmovies.jsp">View Movies</a></li>
                <li><a href="viewbooks.jsp">View Books</a></li>
                <li><a href="index.html">Logout</a></li>
            </ul>
        </div>
        <!--Menu bar header2 end-->
       
        
        <!--image start-->
        
             <img id="img" src="img/images1.jpg">
        <!--image end-->
        <br>
        <br>
    
        <%
    String sr=request.getParameter("mid");
		int no=Integer.parseInt(sr);
		
                String mname=null;
                String mprice=null;
                String mdir=null;
                
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");
				
			stmt = con.createStatement();
			rs = stmt.executeQuery("select mname,mprice from movies where mid="+no);
			if (rs.next()) {
				mname= rs.getString(1);
                                mprice = rs.getString(2);
                            
			
			} else {
				response.setContentType("text/html");

				out.println("<font color='red'>image not found for given id :</font>"+no);

				return;
			}
%>

        <form method="post" action="">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Movie Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> Movie Name:</td>
                        <td><%=mname%></td>
                    </tr>
                   
                    <tr>
                        <td>Price:</td>
                        <td><%=mprice%></td>
                    </tr>
                    <tr>
                        <td>A/c number:</td>
                        <td><input type="text" name="mdir" value="" required=""/></td>
                    </tr>
                    
                    
                        
                             
                    
                    
                     </tbody>
            </table>
                <br>
                <br>
                
               <input type="submit" value="Purchase" />
                             
                        
                        
                        <input type="reset" value="Cancel" />
                        
                    
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
--%>

<h2 style="text-align: center">You have successfully purchased the movie</h2>

<h3>Click below to view movies</h3>
<a href="viewmovies.jsp">Click here</a>