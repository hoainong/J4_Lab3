package com.hoainong.bai2;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
@MultipartConfig
@WebServlet(urlPatterns = "/home-bai2")
public class Controller_bai2 extends HttpServlet{
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/view_bai2_2/form.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			
			DateTimeConverter dtc = new DateConverter(new Date());
			dtc.setPattern("MM/dd/yyyy");
			ConvertUtils.register(dtc, Date.class);

			Model_bai2 staff = new Model_bai2();

			BeanUtils.populate(staff, req.getParameterMap());
			System.out.println(staff.getFullname());
			System.out.println(staff.getNotes());
			
			File dir = new File(req.getServletContext().getRealPath("/files"));
			if(!dir.exists()) {
				dir.mkdirs();
			}
			Part photo = req.getPart("photo_file");
			File photoFile = new File(dir, photo.getSubmittedFileName());
			photo.write(photoFile.getAbsolutePath());
			System.out.println(photoFile.getAbsolutePath());
			staff.setPhoto(photoFile.getName());
			req.setAttribute("bean", staff);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("/views/view_bai2_2/success.jsp").forward(req, resp);
	}

}
