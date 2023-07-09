package com.registration.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registration.model.DaoService;
import com.registration.model.DaoServiceimpl;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/Registration")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("name");
		String email= request.getParameter("email");
		String number= request.getParameter("number");
		String password= request.getParameter("password");
		
		DaoService service = new DaoServiceimpl();
		service.connectDB();
		service.saveReg(username, email, number, password);
		ResultSet result = service.Blogs();
		request.setAttribute("result", result);
	     
		 response.setContentType("text/html");
		 PrintWriter out = response.getWriter();
		 out.println("<script>alert('Registered successfully!');</script>");
		   try {
	            Thread.sleep(3000); // 30 seconds = 30,000 milliseconds
	        } catch (InterruptedException e) {
	            e.printStackTrace();
	        }
	        
	        // Forward the request after the delay
	        RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
	        rd.forward(request, response);
	    }

	}