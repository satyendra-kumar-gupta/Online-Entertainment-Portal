/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Satyendra
 */
public class UserlogDAO {

   public static boolean validate(String n, String p) {
        boolean status=false;  

    try
    {  

        Class.forName("com.mysql.jdbc.Driver");  

        Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","");  
      
        PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from userreg1 where email=? and password=?");  
        ps.setString(1,n);  
        ps.setString(2,p);  
      
        ResultSet rs=ps.executeQuery();  
        status=rs.next();  
          
}
    
    catch(ClassNotFoundException | SQLException e)
{
    System.out.println(e);
}
    
return status;
        
}
    
}
