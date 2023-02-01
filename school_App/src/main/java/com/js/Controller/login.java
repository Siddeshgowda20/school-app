package com.js.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/login")
public class login extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("uname");
		String password = req.getParameter("psw");
		resp.setContentType("text/jsp");

		if (email.equals("abcd@gmail.com") && password.equals("1234")) {
			RequestDispatcher rd = req.getRequestDispatcher("welcome.jsp");
			rd.forward(req, resp);

		} else {
			PrintWriter pw = resp.getWriter();
			pw.print("Email or Password wrong");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.include(req, resp);
		}

	}

}
