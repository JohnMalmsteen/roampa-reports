package com.roampa.reports.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"com.roampa.reports.controller", "com.roampa.reports.model", "com.roampa.reports.service"})
public class AppConfig extends WebMvcConfigurerAdapter {
	private static final String DB_URL = "jdbc:mysql://localhost:8889/roampa";
	private static final String DB_USER = "root";
	private static final String DB_PASS = "root";

	@Bean
	public ViewResolver jspViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/jsp/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }
	
	@Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }


	public static String getDbUrl() {
		return DB_URL;
	}


	public static String getDbUser() {
		return DB_USER;
	}


	public static String getDbPass() {
		return DB_PASS;
	}
	
	
}
