<%-- 
    Document   : addbooks
    Created on : 25 Jan, 2019, 8:58:02 PM
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
                <li><a href="sellerhome.jsp">Home</a></li>
                <li><a href="addmovies.jsp">Add Movies</a></li>
                <li><a href="addbooks.jsp">Add Books</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
        <!--Menu bar header2 end-->
       
        
        <!--image start-->
        
             <img id="img" src="img/images1.jpg">
        <!--image end-->
        
         <!--Seller Form Begins-->
        <br>
        <br>
        <form method="post" action="Addbooksdb" enctype="multipart/form-data" >
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Add Books</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Book Name:</td>
                        <td><input type="text" name="bname" value="" required="" /></td>
                    </tr>
                    
                    <tr>
                        <td>Price:</td>
                        <td><input type="number" name="bprice" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Author:</td>
                        <td><input type="text" name="bauthor" value="" required=""/></td>
                    </tr>
                    
                    <tr>
                        <td>Images:</td>
                        <td><input type="file" name="bimg"  /></td>
                    </tr>
                    
                    
                    <tr>
                        <td><input type="submit" value="Add" /></td>
                        <td><input type="reset" value="Cancel" /></td>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
        <br>
        <br>
       <!--Seller Form Ends-->
       
       
       <!--footer start-->
        <div id="footer">
            <h2><b style="color:black">Copyright &COPY;</b> : Entertainment Portal</h2>
            <h3><b style="color:black">Developed by</b> : CDAC Student</h3>
            <h4  >Email : xyz@cdac.in</h4>
        </div>
    </body>
</html>
