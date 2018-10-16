package com.prdx.web.config;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.prdx.web.constant.DBConstants;

@Configuration
@EnableTransactionManagement
public class DBConfig {

//    private String packagesToScan = "com.prdx.web.bean.contact";
    
//    @Primary
//    @Bean
//    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
//        LocalContainerEntityManagerFactoryBean em = new LocalContainerEntityManagerFactoryBean();
//        em.setDataSource(ednsDataSource());
//        em.setPackagesToScan(packagesToScan);
//        em.setPersistenceUnitName(DBConstants.PRDX_UNIT);
//        JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
//        em.setJpaVendorAdapter(vendorAdapter);
//        em.setJpaProperties(additionalProperties());
//        return em;
//    }

	@Bean
    public DataSource prdxDataSource() {
        Context ctx;
        DataSource ds = null;
        try {
            ctx = new InitialContext();
            ds = (DataSource) ctx.lookup(DBConstants.PRDX_DATASOURCE);
        } catch (NamingException e) {
            e.printStackTrace();
        }
        return ds;
    }
    
    @Bean
    public JdbcTemplate jdbcTemplate()
    {
        return new JdbcTemplate(prdxDataSource());
    }

//    @Bean
//    public PlatformTransactionManager transactionManager() {
//        JpaTransactionManager transactionManager = new JpaTransactionManager();
//        transactionManager.setEntityManagerFactory(entityManagerFactory().getObject());
//        return transactionManager;
//    }
//
//    private Properties additionalProperties() {
//        Properties properties = new Properties();
//        properties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
//        //properties.setProperty("hibernate.default_schema", "edns");
//        properties.setProperty("hibernate.show_sql", "false");
//        properties.setProperty("hibernate.format_sql", "false");
//        properties.setProperty("hibernate.ejb.naming_strategy","org.hibernate.cfg.ImprovedNamingStrategy");
//        properties.setProperty("javax.persistence.validation.mode", "none");
//        return properties;
//    }

}