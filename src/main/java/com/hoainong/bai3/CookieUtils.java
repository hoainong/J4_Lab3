package com.hoainong.bai3;

import java.util.Iterator;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieUtils {
	public static Cookie add(String name, String value, int hours, HttpServletResponse resp) {
		Cookie c = new Cookie(name, value);
		c.setMaxAge(hours*60*60);
		c.setPath("/");
		resp.addCookie(c);
		return c;
		
	}
	public static String get(String name,HttpServletRequest req){
		Cookie[] c = req.getCookies();
		if(c !=null) {
			for(Cookie c1 : c) {
				if(c1.getName().equalsIgnoreCase(name)) {
					return c1.getValue();
				}
			}
	}
		return "";
		
	}
}
