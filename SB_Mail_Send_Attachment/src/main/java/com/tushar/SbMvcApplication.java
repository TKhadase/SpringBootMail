package com.tushar;

import java.util.Locale;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.Ordered;
import org.springframework.core.io.FileSystemResource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.XmlViewResolver;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@SpringBootApplication
public class SbMvcApplication {

	/*//for InternalResourceViewResolver: Disable this if CustomMvcConfigurer class method is written
	@Bean
	public InternalResourceViewResolver configureViewResolver() {
		System.out.println("SbMvcApplication.configureViewResolver():InternalResourceViewResolver");
		InternalResourceViewResolver irvResolver  = new InternalResourceViewResolver();
		irvResolver.setPrefix("/WEB-INF/JSP_Pages/");
		irvResolver.setSuffix(".jsp");
		return irvResolver;
	}*/

	/*//for ResourceBundleViewResolver
	 * @Bean
	public ResourceBundleViewResolver configureViewResolver() {
		System.out.println("SbMvcApplication.configureViewResolver(): ResourceBundleViewResolver");
		ResourceBundleViewResolver  rbvs = new ResourceBundleViewResolver();
		rbvs.setBasename("com/tushar/common/views");
		return rbvs;
	}*/

	@Bean
	public BeanNameViewResolver configureViewResolver() {
		System.out.println("SbMvcApplication.configureViewResolver(): BeanNameViewResolver");
		BeanNameViewResolver vResolver = new BeanNameViewResolver();
		vResolver.setOrder(Ordered.HIGHEST_PRECEDENCE);
		return vResolver;
	}

	@Bean("multiPartResolver")
	public CommonsMultipartResolver createMultipartResolver() {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
		multipartResolver.setMaxUploadSizePerFile(-1);
		multipartResolver.setMaxUploadSize(-1);
		multipartResolver.setPreserveFilename(true);
		return multipartResolver;
	}

	@Bean("messageSource") // fixed id
	public ResourceBundleMessageSource createLocaleSpecificText() {
		ResourceBundleMessageSource rbms = new ResourceBundleMessageSource();
		rbms.setBasenames("com/tushar/common/App");
		return rbms;
	}

	@Bean("localeResolver") // fixed id
	public SessionLocaleResolver setDefaultLocale() {
		SessionLocaleResolver locale = new SessionLocaleResolver();
		locale.setDefaultLocale(new Locale("en", "US"));
		return locale;
	}

	@Bean("lci") // not fixed id
	public LocaleChangeInterceptor handleLocaleRequest() {
		LocaleChangeInterceptor localeIcp = new LocaleChangeInterceptor();
		localeIcp.setParamName("lang");
		return localeIcp;
	}
	
	/*@Bean
	public TilesConfigurer activateTileFramework() {
		System.out.println("SbMvcApplication.activate :: TileFramework()");
		TilesConfigurer cfgTiles = new TilesConfigurer();
		//default location & Name
		cfgTiles.setDefinitions("/WEB-INF/tiles.xml");
		return cfgTiles;
	}
	
	@Bean
	public TilesViewResolver activateTilesViewResolver() {
		System.out.println("SbMvcApplication.activate:: TilesViewResolver()");
		TilesViewResolver tilesViewResolver = new TilesViewResolver();
		return tilesViewResolver;
	}*/
	
	
	@Bean
	public BCryptPasswordEncoder createEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	public static void main(String[] args) {
		SpringApplication.run(SbMvcApplication.class, args);
	}

}
