package com.wecp.event_management_system;

import org.apache.catalina.filters.CorsFilter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;


@SpringBootApplication
// @EnableJpaRepositories(basePackages = "com.wecp.event_management_system.repositories")
// @EntityScan(basePackages = "com.wecp.event_management_system.entities")
public class EventManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(EventManagementSystemApplication.class, args);
	}

	// @Bean
    // public FilterRegistrationBean corsFilter() {
    //     FilterRegistrationBean registrationBean = new FilterRegistrationBean();
    //     registrationBean.setFilter(new CorsFilter());
    //     registrationBean.addUrlPatterns("/*");
    //     return registrationBean;
    // }

}
