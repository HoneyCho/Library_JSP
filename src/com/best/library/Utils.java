package com.best.library;

import javax.servlet.http.HttpServletRequest;

public class Utils {
	public static String getBaseURL(HttpServletRequest request) {
		String host =  request.getServerName().toString();
		String port = String.valueOf(request.getServerPort());
		String redirectURL = "http://"+host+":"+port;
		return redirectURL;
		
		
	}
}
