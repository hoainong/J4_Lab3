package com.hoainong.bai4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 * Servlet implementation class Controller_bai4
 */
@WebServlet(urlPatterns = "/email")
public class Controller_bai4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/views/view_bai4/form.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    final String username = "hoainnps24487@fpt.edu.vn";
	    final String password = "tvyzbwfbjbziepqs";
	    Properties props = new Properties();
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.smtp.port", "587");

	    
	    Session session = Session.getInstance(props, new Authenticator() {
	        protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(username, password);
	        }
	    });

	   
	    String to = request.getParameter("to");
	    String subject = request.getParameter("subject");
	    String body = request.getParameter("body");
	    if (to == null || to.isEmpty() || subject == null || subject.isEmpty() || body == null || body.isEmpty()) {
	        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing parameter(s)");
	        return;
	    }

	    try {
	       
	        Message message = new MimeMessage(session);

	       
	        message.setFrom(new InternetAddress(username));

	      
	        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

	     
	        message.setSubject(subject);

	        message.setText(body);

	     
	        Transport.send(message);

	    
	        System.out.println("Email sent successfully.");
	    } catch (MessagingException e) {
	      
	        Logger.getLogger(getClass().getName()).log(Level.SEVERE, "Error sending email", e);
	        throw new RuntimeException(e);
	    }
	}


}
