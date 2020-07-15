<%-- 
    Document   : user
    Created on : 25 Jan, 2019, 7:36:07 PM
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
                <li><a href="index.html">Home</a></li>
                <li><a href="admin.jsp">Admin</a></li>
                <li><a href="seller.jsp">Seller</a></li>
                <li><a href="user.jsp">User</a></li>
                <li><a href="contact.html">Contact Us</a></li>
            </ul>
        </div>
        <!--Menu bar header2 end-->
       
        
        <!--image start-->
        
             <img id="img" src="img/images1.jpg">
        <!--image end-->
        <br>
        <br>
         <!--User Form Begins-->
        <form method="post" action="Userlogdb">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">User Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name:</td>
                        <td><input type="email" name="uname" value=""  placeholder="Enter your Email" required="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="upass" value=""  placeholder="Enter your password" required="" /></td>
                    </tr>
                    
                    
                   
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">For registration!! <a href="userreg.jsp">Click Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
        <br>
        <br>
        <!--User Form Ends-->
        
        
         <!--footer start-->
        <div id="footer">
            <h2><b style="color:black">Copyright &COPY;</b> : Entertainment Portal</h2>
            <h3><b style="color:black">Developed by</b> : CDAC Student</h3>
            <h4  >Email : xyz@cdac.in</h4>
        </div>
        <!--footer end-->
    </body>
</html>
