/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Satyendra
 */
public class DisplayImg1 extends HttpServlet {

	
        @Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws IOException,ServletException {

		String sr=request.getParameter("bid");
		int no=Integer.parseInt(sr);
		Blob image = null;
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ServletOutputStream out = response.getOutputStream();
		try {
			
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/entertainment_db","root",""); 			
			stmt = con.createStatement();
			rs = stmt.executeQuery("select bimg from books where bid="+no);
			if (rs.next()) {
				image = rs.getBlob(1);
			
			} else {
				response.setContentType("text/html");

				out.println("<font color='red'>image not found for given id :</font>"+no);

				return;
			}
			response.setContentType("image/gif");
                        
			InputStream in = image.getBinaryStream();
			int length = (int) image.length();
			int bufferSize = 1024;
			byte[] buffer = new byte[bufferSize];
			while ((length = in.read(buffer)) != -1) {
				out.write(buffer, 0, length);
			}
			in.close();
			out.flush();
			con.close();
			
		} catch (Exception e) {
		response.setContentType("text/html");
		out.println("<html><head><title>Unable To Display image</title></head>");
		out.println("<body><h4><font color='red'>Image Display Error= " +e.getMessage()+" </font></h4></body></html>");
                return;
		} 
	}
}