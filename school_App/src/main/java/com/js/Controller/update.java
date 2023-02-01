package com.js.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.studentCRUD;
import com.js.dto.student;

@WebServlet(value = "/update")
public class update extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		int age = Integer.parseInt(req.getParameter("age"));
		long phone = Long.parseLong(req.getParameter("phone"));
		String address = req.getParameter("address");

		student s = new student();
		s.setId(id);
		s.setName(name);
		s.setEmail(email);
		s.setAge(age);
		s.setPhone(phone);
		s.setAddress(address);

		studentCRUD sc = new studentCRUD();
		if (sc.update(s)) {
			RequestDispatcher rd = req.getRequestDispatcher("view");
			rd.forward(req, resp);
		} else {
			req.setAttribute("msg", "Failed to Update Student details");
			RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
			rd.forward(req, resp);
		}
	}
}
