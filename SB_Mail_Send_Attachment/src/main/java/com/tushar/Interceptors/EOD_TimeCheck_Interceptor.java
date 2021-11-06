package com.tushar.Interceptors;

import java.time.LocalDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

public class EOD_TimeCheck_Interceptor  implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		LocalDateTime ldt =  LocalDateTime.now();
		int hours= ldt.getHour();
		System.out.println("EOD_TimeCheck_Interceptor.preHandle():hours:"+hours);
		if(hours>=0 &&  hours<=6 ) {
			RequestDispatcher rd = request.getRequestDispatcher("/Index.jsp?err=EOD");
			rd.forward(request, response);
			return false;
		}
		return true;
	}
}
