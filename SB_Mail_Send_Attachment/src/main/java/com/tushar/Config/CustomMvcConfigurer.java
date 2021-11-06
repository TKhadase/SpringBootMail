package com.tushar.Config;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver;
import org.springframework.web.servlet.view.XmlViewResolver;

import com.tushar.Interceptors.EOD_TimeCheck_Interceptor;

@Component
public class CustomMvcConfigurer implements WebMvcConfigurer {

	@Autowired
	private LocaleChangeInterceptor lci;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		System.out.println("CustomMvcConfigurer.addInterceptors()");
		registry.addInterceptor(new EOD_TimeCheck_Interceptor());
		registry.addInterceptor(lci);
	}
	
	/*	//For InternalResourceViewResolver: Enable this if main class method is commented
		@Override
		public void configureViewResolvers(ViewResolverRegistry registry) {
			System.out.println("CustomMvcConfigurer.configureViewResolvers(): InternalResourceViewResolver");
			InternalResourceViewResolver irvResolver  = new InternalResourceViewResolver();
			irvResolver.setPrefix("/WEB-INF/JSP_Pages/");
			irvResolver.setSuffix(".jsp");
			registry.viewResolver(irvResolver);
		}*/
	
	/*//For UrlBasedViewResolver
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		System.out.println("CustomMvcConfigurer.configureViewResolvers(): UrlBasedViewResolver");
		UrlBasedViewResolver urlResolver  = new UrlBasedViewResolver();
		urlResolver.setPrefix("/WEB-INF/JSP_Pages/");
		urlResolver.setSuffix(".jsp");
		urlResolver.setViewClass(JstlView.class);
		registry.viewResolver(urlResolver);
	}*/
	
	
	/*	@Autowired
		private ServletContext sc;
		
		@Override
		public void configureViewResolvers(ViewResolverRegistry registry) {
				System.out.println("SbMvcApplication.configureViewResolver(): configureXmlViewResolver");
				XmlViewResolver  xvResolver = new XmlViewResolver();
				//reads to default /WEB-INF/views.xml
				xvResolver.setLocation( new FileSystemResource(sc.getRealPath("/")+"/WEB-INF/views.xml"));
				registry.viewResolver(xvResolver);
		 }
			*/
}
