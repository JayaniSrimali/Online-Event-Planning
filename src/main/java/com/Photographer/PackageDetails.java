package com.Photographer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;


@WebServlet("/PackageDetails")
public class PackageDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public PackageDetails() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String Package_ID = request.getParameter("packageID");
		String Category = request.getParameter("category");
		String Package_Name = request.getParameter("packageName");
		String Package_Description= request.getParameter("packageDescription");
		
		
		 float Package_Price = 0.0f;
	        try {
	        	Package_Price = Float.parseFloat(request.getParameter("packagePrice"));
	        } catch (NumberFormatException e) {

	            e.printStackTrace();
	        }
	        
	        boolean isTrue;
	        
	        isTrue = PhotographerDBUtil.insertPackage(Package_ID, Category, Package_Name, Package_Description, Package_Price);
	        if(isTrue == true)
	        {
	        	RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
	        	dis.forward(request,response);
	        	
	        }
	        else
	        {
	        	RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
	        	dis2.forward(request,response);
	        }
	        
		
		
	}

}
