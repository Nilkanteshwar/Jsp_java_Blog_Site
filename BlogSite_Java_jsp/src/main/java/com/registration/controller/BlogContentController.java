package com.registration.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.registration.model.DaoService;
import com.registration.model.DaoServiceimpl;

/**
 * Servlet implementation class BlogContentController
 */
@WebServlet("/BlogContentController")
public class BlogContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogContentController() {
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
//		String username=request.getParameter("username");
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		String tags=request.getParameter("tags");
		String image=request.getParameter("image");
		System.out.println(title);
		System.out.println(content);
		DaoService service = new DaoServiceimpl();
		service.connectDB();
		service.saveBlog( title, tags, content, image);
		System.out.println("saved your blog");
		
	}

}
