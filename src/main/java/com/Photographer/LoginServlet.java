package com.Photographer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.List;
import javax.servlet.RequestDispatcher;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String UserNameP = request.getParameter("UserNameP");
		String PasswordP = request.getParameter("PasswordP");
		
		
		
        
		
		
		
		try
		{
		List<Photographer> plist = PhotographerDBUtil.validate(UserNameP,PasswordP);
		request.setAttribute("plist", plist);
		
		Photographer p = plist.get(0);
		int id = p.getID();
		
		HttpSession session = request.getSession();
		session.setAttribute("userid",id);
		
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("Photographeraccount.jsp");
		dis.forward(request, response);
		
		
	}

}
