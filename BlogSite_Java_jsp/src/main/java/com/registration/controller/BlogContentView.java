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
 * Servlet implementation class BlogContentView
 */
@WebServlet("/BlogContentView")
public class BlogContentView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogContentView() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DaoService service=new DaoServiceimpl();
		service.connectDB();
		ResultSet result = service.Blogs();
		HttpSession session = request.getSession();
		 String email = (String)session.getAttribute("email");
		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/BlogPage.jsp");
		rd.forward(request, response);
	}


}
