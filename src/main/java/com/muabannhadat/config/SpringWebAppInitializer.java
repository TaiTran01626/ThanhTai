package com.muabannhadat.config;

import javax.servlet.FilterRegistration;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.context.annotation.Bean;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.GenericWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.multipart.support.StandardServletMultipartResolver;
import org.springframework.web.servlet.DispatcherServlet;



public class SpringWebAppInitializer implements WebApplicationInitializer {
	private String TMP_FOLDER = "/tmp";
	private int MAX_UPLOAD_SIZE = 512 * 1024 * 1024;
	public void onStartup(ServletContext servletContext) throws ServletException {
        // UTF8 Charactor Filter.
        FilterRegistration.Dynamic fr = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
 
        fr.setInitParameter("encoding", "UTF-8");
        fr.setInitParameter("forceEncoding", "true");
        fr.addMappingForUrlPatterns(null, true, "/*");        
        ServletRegistration.Dynamic appServlet = servletContext.addServlet("mvc",
				new DispatcherServlet(new GenericWebApplicationContext()));

		appServlet.setLoadOnStartup(1);

		MultipartConfigElement multipartConfigElement = new MultipartConfigElement(TMP_FOLDER, MAX_UPLOAD_SIZE,
				MAX_UPLOAD_SIZE * 2, MAX_UPLOAD_SIZE / 2);

		appServlet.setMultipartConfig(multipartConfigElement);

	}

	@Bean
	public StandardServletMultipartResolver multipartResolver() {
		return new StandardServletMultipartResolver();
	}
}
