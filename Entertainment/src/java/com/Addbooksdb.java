package com;
//import java.io.File;
//import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
//import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import java.sql.SQLException;
//import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Vaibhav
 */
@SuppressWarnings("serial")

//@WebServlet("/home.jsp")
@MultipartConfig
public class Addbooksdb extends HttpServlet {

  

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
            
            PrintWriter out = response.getWriter();
            
            Part img = request.getPart("bimg");
            
            
            String name = request.getParameter("bname");
            String price = request.getParameter("bprice");
            String author = request.getParameter("bauthor");
            
  
           
            
           
            
            try {
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root","") ;
                    PreparedStatement statement = con.prepareStatement("insert into books (bname, bprice, bauthor, bimg) values (?,?,?,?)");
                    
                   
                    
    		    InputStream is = img.getInputStream();
    		
    
                   statement.setString(1,name);
                    statement.setString(2,price);
                    statement.setString(3,author);
                    
                    statement.setBlob(4,is);
                  
                    
                    statement.executeUpdate();
                 
                  
                   
                  
                }
                catch(IOException | ClassNotFoundException | SQLException e){
                }
          

                response.sendRedirect("submittedbook.jsp");
    }
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	super.doGet(req, resp);
}

}
