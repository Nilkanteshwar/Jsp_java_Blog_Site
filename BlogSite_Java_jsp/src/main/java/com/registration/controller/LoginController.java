package com.registration.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.registration.model.DaoService;
import com.registration.model.DaoServiceimpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String email=	request.getParameter("email");
	String password=	request.getParameter("password");
	
	DaoService service = new DaoServiceimpl();
	service.connectDB();
	
	 boolean status= service.verifyCredentials(email, password);
	 if(status) {
		 System.out.println("true");
			ResultSet result = service.Blogs();
			request.setAttribute("result", result);
			  HttpSession session = request.getSession();
			    session.setAttribute("email", email);
//			    RequestDispatcher rd=request.getRequestDispatcher("Dashboard.jsp");  // ye jayega 
		 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/view/BlogPage.jsp");
		 rd.forward(request, response);
		 		
	 }else {
		 System.out.println("invalid id pass");
	 }
	}

}
