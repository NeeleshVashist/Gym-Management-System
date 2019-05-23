package com.gym.controller;
import java.util.*;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gym.data.GymDAOImpl;
import com.gym.model.Gym;

@WebServlet("/GymController")
public class GymController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	GymDAOImpl gymUtil;

	String resource = "login.jsp";
	String message = null;
	
	@Override
	public void init() throws ServletException {
		super.init();
		gymUtil=new GymDAOImpl();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		try {
			String COMMAND=request.getParameter("COMMAND");
			
			if(COMMAND==null) {
				COMMAND="LIST";
			}
			
			switch(COMMAND) {
				
				case "LIST":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						listMember(request,response);
					}
					break;
				
				case "ADD":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						addMembers(request,response);
					}
					break;
				
				case "DELETE":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						deleteMembers(request,response);
					}
					break;
				
				case "SEARCH":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						searchMembers(request,response);
					}
					break;
				
				case "CHECK":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						checkMembers(request, response);
					}
					break;
				
				case "LOAD":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						loadMember(request,response);
					}
					break;
					
				case "UPDATE":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						updateMembers(request,response);
					}
					break;
				
				case "LOAD_UPDATER":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						updateLoader(request, response);
					}
				    break;
				
				case "SEARCH_CUSTOMER":
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						searchCustomer(request,response);
					}
					break;
				
				default:
					if(session.isNew()) {
						sessionChecker(request, response);
					}
					else {
						listMember(request,response);
					}
					break;
			}
		}
		
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	private void sessionChecker(HttpServletRequest request, HttpServletResponse response) throws Exception {

		message = "Session Expired : TRY AGAIN";
		RequestDispatcher rd = request.getRequestDispatcher(resource);
		request.setAttribute("msg", message);
		rd.forward(request, response);
	}

	
	private void listMember(HttpServletRequest request, HttpServletResponse response) throws Exception{
		List<Gym> gymList = gymUtil.getMembers();
		request.setAttribute("GYM_LIST", gymList);
		
		RequestDispatcher rd = request.getRequestDispatcher("list-user.jsp");
		
		rd.forward(request, response);
		
	}
	
	
	private void addMembers(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String phoneNumber=request.getParameter("phoneNumber");
		int age=Integer.parseInt(request.getParameter("age"));
		String sex=request.getParameter("sex");
	    String address=request.getParameter("address");
	    String city=request.getParameter("city");
	    String state=request.getParameter("state");
	    String pinCode=request.getParameter("pinCode");
	    Double height=Double.valueOf(request.getParameter("height"));
		Double weight=Double.valueOf(request.getParameter("weight"));
		Double bmi=Double.valueOf(request.getParameter("bmi"));
		int packageId=Integer.parseInt(request.getParameter("packageId"));
	    String packageName=request.getParameter("packageName");
		Double rateOfPackage=Double.parseDouble(request.getParameter("rateOfPackage"));
		String dateOfJoining=request.getParameter("dateOfJoining");
		String dateOfExpiry=request.getParameter("dateOfExpiry");
		
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		Date doj=new Date();
		doj=sdf.parse(dateOfJoining);
		Date doe=new Date();
		doe=sdf.parse(dateOfExpiry);
				
		Gym gym=new Gym(firstName, lastName, phoneNumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, doj, doe);
		gymUtil.addMembers(gym);
		response.sendRedirect("GymController");
		
	}
	
	
	private void deleteMembers(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		int serialNo=Integer.parseInt(request.getParameter("serialNo"));
		
		String phoneNumber = request.getParameter("phoneNumber");
//		gymUtil.deleteMembers(serialNo);
		gymUtil.deleteMembers(phoneNumber);
		
//		System.out.println(phoneNumber);
		listMember(request,response);//return to display page
	}
	
	
	private void searchMembers(HttpServletRequest request, HttpServletResponse response)throws Exception {
		
		String phoneNumber=request.getParameter("theSearchName");
//		System.out.println(phoneNumber);
		
		if(!phoneNumber.equals("")) {
			List<Gym> searchList = gymUtil.searchMembers(phoneNumber);
			request.setAttribute("GYM_LIST", searchList);

//			System.out.println(searchList);
			
			RequestDispatcher rd = request.getRequestDispatcher("list-user.jsp");
			
			rd.forward(request, response);	
		}
		
		else {
			listMember(request, response);
		}
			
		
	}
	
	
	private void checkMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		RequestDispatcher rd = request.getRequestDispatcher("add-customer.jsp");
		rd.forward(request, response);
		
	}

	
	private void loadMember(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int serialNo=Integer.parseInt(request.getParameter("serialNo"));
		Gym gym=gymUtil.getMember(serialNo);
		request.setAttribute("GYM",gym);
		RequestDispatcher rd=request.getRequestDispatcher("admin-full-details.jsp");
		rd.forward(request,response);
		
	}
	
	
	private void updateMembers(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int serialNo=Integer.parseInt(request.getParameter("serialNo"));
		String firstName=request.getParameter("firstName");
		String lastName=request.getParameter("lastName");
		String phoneNumber=request.getParameter("phoneNumber");
		int age=Integer.parseInt(request.getParameter("age"));
		String sex=request.getParameter("sex");
	    String address=request.getParameter("address");
	    String city=request.getParameter("city");
	    String state=request.getParameter("state");
	    String pinCode=request.getParameter("pinCode");
	    Double height=Double.valueOf(request.getParameter("height"));
		Double weight=Double.valueOf(request.getParameter("weight"));
		Double bmi=Double.valueOf(request.getParameter("bmi"));
		int packageId=Integer.parseInt(request.getParameter("packageId"));
	    String packageName=request.getParameter("packageName");
		Double rateOfPackage=Double.parseDouble(request.getParameter("rateOfPackage"));
		String dateOfJoining=request.getParameter("dateOfJoining");
		String dateOfExpiry=request.getParameter("dateOfExpiry");
		
		
		SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
		Date doj=new Date();
		doj=sdf.parse(dateOfJoining);
		Date doe=new Date();
		doe=sdf.parse(dateOfExpiry);
				
		Gym gym=new Gym(serialNo, firstName, lastName, phoneNumber, age, sex, address, city, state, pinCode, height, weight, bmi, packageId, packageName, rateOfPackage, doj, doe);
		gymUtil.updateMembers(gym);
		listMember(request,response);
		
	}
	
	
	private void updateLoader(HttpServletRequest request, HttpServletResponse response) throws Exception{
		int serialNo=Integer.parseInt(request.getParameter("serialNo"));		
		Gym gym=gymUtil.getMember(serialNo);
		request.setAttribute("GYM",gym);
		RequestDispatcher rd=request.getRequestDispatcher("update-customer.jsp");
		rd.forward(request,response);
		
	}

	
	private void searchCustomer(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String phoneNumber=request.getParameter("theSearchName");
//		System.out.println(phoneNumber);
		
		Gym searchList = gymUtil.getCustomer(phoneNumber);
		request.setAttribute("GYM", searchList);

//		System.out.println(searchList);
		
		RequestDispatcher rd = request.getRequestDispatcher("customerLogin.jsp");
		
		rd.forward(request, response);
		
	}

}
