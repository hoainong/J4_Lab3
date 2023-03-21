package com.hoainong.bai1;

import java.io.File;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@MultipartConfig
@WebServlet(urlPatterns = "/home-hoaiNong")
public class Controller_bai1 extends HttpServlet{
	private static final long serialVersionUID = 1L;

@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	req.getRequestDispatcher("/views/view_bai1/Form.jsp").forward(req, resp);
}
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	File dir = new File(req.getServletContext().getRealPath("/files"));
	if (!dir.exists()) {
		dir.mkdir();
	}

	Part photo = req.getPart("photo_file");
	File photoFile = new File(dir, photo.getSubmittedFileName());
	photo.write(photoFile.getAbsolutePath());
	Part doc = req.getPart("doc_file");
	File docFile = new File(dir, doc.getSubmittedFileName());
	doc.write(docFile.getAbsolutePath());

	
	req.setAttribute("img", photoFile);
	req.setAttribute("doc", docFile);


	req.getRequestDispatcher("/views/view_bai1/Result.jsp").forward(req, resp);
}
}
