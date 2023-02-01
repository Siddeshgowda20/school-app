package com.js.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.studentCRUD;
import com.js.dto.student;
@WebServlet(value = "/register")
public class RegisterStudent extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// Front end 
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		int age = Integer.parseInt(req.getParameter("age"));
		long phone = Long.parseLong(req.getParameter("phone"));
		String address = req.getParameter("address");
		
		
		// Back end
		student s = new student();
		s.setName(name);
		s.setEmail(email);
		s.setAge(age);
		s.setPhone(phone);
		s.setAddress(address);
		
		studentCRUD sc = new studentCRUD();
		boolean bo = sc.SaveStudent(s);
		
		
		// FE
		if(bo) {
		 PrintWriter pw = resp.getWriter(); 
		
			pw.print("Inserted successfully");			
	}
		else
	{
		 PrintWriter pw = resp.getWriter(); 
		pw.print("Failed to insert");
	
	}

}
}
