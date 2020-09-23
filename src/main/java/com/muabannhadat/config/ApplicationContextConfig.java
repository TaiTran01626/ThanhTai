package com.muabannhadat.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.muabannhadat.*") 
public class ApplicationContextConfig { 

    @Bean(name = "viewResolver")
    public InternalResourceViewResolver getViewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/views/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }
    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
        multipartResolver.setMaxUploadSize(20971520);//20MB
//        multipartResolver.setMaxInMemorySize(1048576);	// 1MB
        return multipartResolver;
    }
    
    @Bean
    public ResourceBundleMessageSource messageSource() {
       ResourceBundleMessageSource rb = new ResourceBundleMessageSource();
       // Load property in message/validator.properties
       rb.setBasenames(new String[] { "messages/messages"});
       rb.setDefaultEncoding("UTF-8");
       System.out.println("hahahha");
       return rb;
    }
//    @Bean(name = "messageSource")
//    public MessageSource getMessageResource()  {
//        ReloadableResourceBundleMessageSource messageResource= new ReloadableResourceBundleMessageSource();
//        messageResource.setBasename("classpath:i18n/messages");
//        messageResource.setDefaultEncoding("UTF-8");
//        return messageResource;
//    }
//    @Bean(name = "localeResolver")
//    public LocaleResolver getLocaleResolver()  {
//        CookieLocaleResolver resolver= new CookieLocaleResolver();
//        resolver.setCookieDomain("myAppLocaleCookie");
//      
//        // 60 phút.
//        resolver.setCookieMaxAge(60*60);
//        return resolver;
//    }
//  
// 
}