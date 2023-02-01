package com.js.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.studentCRUD;
import com.js.dto.student;
@WebServlet(value = "/view")
public class viewAllStudent extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		studentCRUD sc = new studentCRUD();
		List<student> students = sc.getAllStudents();
		System.out.println(students.size());
		if(students.size()>0) {
			
			RequestDispatcher rs = req.getRequestDispatcher("view_All_Student.jsp");
			req.setAttribute("list", students);
			rs.forward(req, resp);
			
		}else {
			PrintWriter pw = resp.getWriter();
			pw.print("No students Registered");
		}
	}

	
	
}
