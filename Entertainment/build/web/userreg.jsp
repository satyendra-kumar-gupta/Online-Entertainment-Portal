<%-- 
    Document   : userreg
    Created on : 25 Jan, 2019, 7:36:23 PM
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
        
        <!--Seller Form Begins-->
        <br>
        <br>
        <form method="post" action="userregdb.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">User Registration</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name:</td>
                        <td><input type="text" name="uname" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="upass" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="uemail" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Mobile:</td>
                        <td><input type="number" name="unum" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><input type="radio" name="ugender" value="male" checked=""> Male<br>
                            <input type="radio" name="ugender" value="female"> Female<br>
                            <input type="radio" name="ugender" value="other"> Other</td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Register" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="user.jsp">Login Here</a></td>
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
