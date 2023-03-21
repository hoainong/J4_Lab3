package com.hoainong.bai3;

import java.io.IOException;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/hoainong-home")
public class Controller_bai3 extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);

		req.setAttribute("username", username);
		req.setAttribute("password", password);
		req.getRequestDispatcher("/views/view_bai3/form.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String pass = req.getParameter("password");
		String remember = req.getParameter("remember");
		if(!username.equalsIgnoreCase("poly")) {
			req.setAttribute("message", "sai ten dang nhap");
		}else if(pass.length()<6) {
			req.setAttribute("message", "sai mat khau");
		}else {
			req.setAttribute("message", "success!!!");
		}
		int hours = (remember==null)?0:30*24;
		CookieUtils.add("username", username, hours, resp);
		CookieUtils.add("password", pass, hours, resp);
		
		
		req.getRequestDispatcher("/views/view_bai3/form.jsp").forward(req, resp);
	}
}
