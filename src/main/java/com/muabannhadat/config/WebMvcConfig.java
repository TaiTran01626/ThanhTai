package com.muabannhadat.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
@EnableWebMvc
public class WebMvcConfig extends WebMvcConfigurerAdapter {
	 
  
	@Override
	  public void addViewControllers(ViewControllerRegistry registry) {
	    registry.addViewController("/").setViewName("index");
	  }
   // Cấu hình để sử dụng các file nguồn tĩnh (html, image, ..)
   @Override
   public void addResourceHandlers(ResourceHandlerRegistry registry) {
       registry.addResourceHandler("/css/**").addResourceLocations("WEB-INF/css/").setCachePeriod(31556926);
       registry.addResourceHandler("/images/**").addResourceLocations("WEB-INF/images/").setCachePeriod(31556926);
       registry.addResourceHandler("/js/**").addResourceLocations("WEB-INF/js/").setCachePeriod(31556926);
       registry.addResourceHandler("/banner/**").addResourceLocations("WEB-INF/banner/").setCachePeriod(31556926);
       registry.addResourceHandler("/font-awesome/**").addResourceLocations("WEB-INF/font-awesome/").setCachePeriod(31556926);
       registry.addResourceHandler("/video/**").addResourceLocations("WEB-INF/video/").setCachePeriod(31556926);
       registry.addResourceHandler("/csschothue/**").addResourceLocations("WEB-INF/csschothue/").setCachePeriod(31556926);
       registry.addResourceHandler("/images2/**").addResourceLocations("WEB-INF/images2/").setCachePeriod(31556926);
       registry.addResourceHandler("/img/**").addResourceLocations("WEB-INF/img/").setCachePeriod(31556926);
   }
 
    
   @Override
   public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
       configurer.enable();
   }
//   @Override
//   public void addInterceptors(InterceptorRegistry registry) {
//       LocaleChangeInterceptor localeInterceptor = new LocaleChangeInterceptor();
//       localeInterceptor.setParamName("lang");
//     
//     
//       registry.addInterceptor(localeInterceptor).addPathPatterns("/*");
//   }
// 
}