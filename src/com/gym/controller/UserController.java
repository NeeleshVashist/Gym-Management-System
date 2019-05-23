package com.gym.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gym.data.UserDAOImpl;
import com.gym.model.User;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAOImpl userUtil=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			String command=request.getParameter("command");
			
			switch(command) {
			case "ADD":
				addUser(request,response);
				break;
				
			case "USER":
				getUser(request,response);
				break;
				
			case "LOGOUT":
				logout(request, response);
				break;
			}
		}
		catch(Exception e) {
			throw new ServletException(e);
		}
		
	}
	
	
	private void logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		String resource = "login.jsp";
		String message = null;
		
		session.invalidate();
		message = "Successfully Logged Out";
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);			
		
		rd.forward(request, response);
		
	}

	
	private void getUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		String resource="login.jsp";
		String message=null;
		
//		System.out.println(userId +"  "+password);
		
		try {
			User user=userUtil.getUser(userId);
			
//			System.out.println(user);
			
			if(user.getPassword().equals(password) && user.getType().equals("customer")) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(3600);
				
				session.setAttribute("user", user);
				session.setAttribute("userName", user.getUserName());
				resource="search.jsp";
			}
			else if(user.getPassword().equals(password) && user.getType().equals("admin")) {
				HttpSession session = request.getSession();
				session.setMaxInactiveInterval(3600);
				
				session.setAttribute("user", user);
				session.setAttribute("userName", user.getUserName());
				resource="GymController";
			}
			else {
				message="Invalid Password : Try Again";
			}
		}
		catch(Exception e) {
			message=e.getMessage();
		}
		
		RequestDispatcher rd=request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
		
	}


	private void addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId=request.getParameter("userId");
		String password=request.getParameter("password");
		String userName=request.getParameter("userName");
		String type=request.getParameter("type");
		String resource="create-user.jsp";
		String message=null;
		User user=new User(userId,password,userName,type);
		
		try {
			if(type.equals("admin")) {
				userUtil.addUser(user);
				message="Registration Successfully : Please Login";
				resource="login.jsp";
			}
			else if(type.equals("customer")) {
				userUtil.addUser(user);
				resource="add-customer.jsp";
			}
		}
		catch(Exception e) {
//			message=e.getMessage();
			message="Mobile Number Already Registered!";
		}
		
		RequestDispatcher rd=request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
	}

	
	public void init() throws ServletException {
		super.init();
		userUtil=new UserDAOImpl();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
