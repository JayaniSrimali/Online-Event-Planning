package com.Photographer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DelectPhotographerServlet")
public class DelectPhotographerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ID = request.getParameter("ID");
		
		boolean isTure;
		
		isTure  = PhotographerDBUtil.deletephotographer(ID);
		
		
		if(isTure == true)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			
			List<Photographer> plist = PhotographerDBUtil.getPhotographerDetails(ID);
			request.setAttribute("plist", plist);
			
			RequestDispatcher dispatcher1 = request.getRequestDispatcher("Photographeraccount.jsp");
			dispatcher1.forward(request, response);
			
			
		}
		
		
		
	}

}
