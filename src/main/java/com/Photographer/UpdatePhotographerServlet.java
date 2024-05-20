package com.Photographer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePhotographerServlet")
public class UpdatePhotographerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String ID = request.getParameter("ID");
		String Name = request.getParameter("Name");
		String Address = request.getParameter("Address");
		String NIC = request.getParameter("NIC");
		String Dateofbirthday = request.getParameter("Dateofbirthday");
		String Gender = request.getParameter("Gender");
		String Email = request.getParameter("Email");
		String ContactNumber = request.getParameter("ContactNumber");
		String UserNameP= request.getParameter("UserNameP");
		String PasswordP= request.getParameter("PasswordP");
		
		
		
		boolean isTure;
		
		isTure = PhotographerDBUtil.updatephotographer(ID, Name, Address, NIC, Dateofbirthday, Gender, Email, ContactNumber, UserNameP, PasswordP);
		
		if(isTure == true)
		{
			
			List<Photographer> plist = PhotographerDBUtil.getPhotographerDetails(ID);
			request.setAttribute("plist", plist);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Photographeraccount.jsp");
			dis.forward(request,response);
			
		}
		
		else
		{
			
			List<Photographer> plist = PhotographerDBUtil.getPhotographerDetails(ID);
			request.setAttribute("plist", plist);
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Photographeraccount.jsp");
			dis.forward(request,response);
			
		}
	}

}
