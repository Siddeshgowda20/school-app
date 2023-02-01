package com.js.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.studentCRUD;
@WebServlet(value = "/delete")
public class deleteStudentById extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		studentCRUD sc = new studentCRUD();
		boolean bo = sc.deleteStudent(id);
		if(bo) {
			RequestDispatcher rd = req.getRequestDispatcher("view");
			rd.forward(req, resp);
		}
		else
		{
			PrintWriter pw = resp.getWriter();
			pw.print("Failed to Delete Student");
		}
	}
	
}
