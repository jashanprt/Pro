package com.view.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/validate")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("Test Servlet");
		 List<String> list = new ArrayList<>();
		    list.add("item1");
		    list.add("item2");
		    list.add("item3");
		    String json = new Gson().toJson(list);
		    response.getWriter().write(json);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String respText = "";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		/*
		 * Enumeration<String> str=request.getParameterNames();
		 * while(str.hasMoreElements()) { System.out.print(str.nextElement());
		 * }/*
		 */
		if (username.equals("admin") && password.equals("admin")) {
			respText = "Welcome";
		} else {
			respText = "Incorrect Login Credentials";
		}
		System.out.println(username);
		System.out.println(password);
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(respText);
		// String json = new Gson().toJson(products);
	}

}
