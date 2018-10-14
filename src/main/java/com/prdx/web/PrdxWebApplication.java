package com.prdx.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;

@SpringBootApplication(scanBasePackages = {
		"com.prdx.web"
})
@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class, DataSourceTransactionManagerAutoConfiguration.class, HibernateJpaAutoConfiguration.class})
@PropertySources({
	@PropertySource(value = {"classpath:application.properties"} , ignoreResourceNotFound = true) ,
	@PropertySource(value = {"file:${env}"} , ignoreResourceNotFound = true)  //if same key, this will 'win'
})
public class PrdxWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(PrdxWebApplication.class, args);
	}
}
