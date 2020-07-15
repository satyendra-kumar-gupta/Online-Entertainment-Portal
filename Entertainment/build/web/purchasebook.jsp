<%-- 
    Document   : purchase
    Created on : 25 Jan, 2019, 10:34:43 PM
    Author     : Satyendra


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
    
        
        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Book Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Book Name:</td>
                        <td><input type="text" name="mname" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Quantity:</td>
                        <td><input type="number" name="mquan" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Price:</td>
                        <td><input type="number" name="mprice" value="" required="" /></td>
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

<h2 style="text-align: center">You have successfully purchased the book</h2>

<h3>Click below to view books</h3>
<a href="viewbooks.jsp">Click here</a>