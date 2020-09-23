package com.muabannhadat.config;

import java.util.Properties;
import java.util.ResourceBundle;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.muabannhadat.constants.Constant;


@Configuration
@EnableJpaRepositories(basePackages = {"com.muabannhadat.repository"})
@EnableTransactionManagement
public class JPAConfig {
	ResourceBundle resourceBundle = ResourceBundle.getBundle(Constant.DATABASE);

	 @Bean
	    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
	        final LocalContainerEntityManagerFactoryBean entityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
	        entityManagerFactoryBean.setDataSource(dataSource());
	        entityManagerFactoryBean.setPackagesToScan(new String[] {
	            "com.muabannhadat.entity"
	        });

	        final HibernateJpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	        entityManagerFactoryBean.setJpaVendorAdapter(vendorAdapter);
	        entityManagerFactoryBean.setJpaProperties(additionalProperties());

	        return entityManagerFactoryBean;
	    }
	 @Bean
	    public PlatformTransactionManager transactionManager(final EntityManagerFactory emf) {
	        final JpaTransactionManager transactionManager = new JpaTransactionManager();
	        transactionManager.setEntityManagerFactory(emf);
	        return transactionManager;
	    }
	

	
	@Bean
	public PersistenceExceptionTranslationPostProcessor exceptionTranslation() {
		return new PersistenceExceptionTranslationPostProcessor();
	}
	
	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(resourceBundle.getString(Constant.DIRVER_NAME_DB));
		dataSource.setUrl(resourceBundle.getString(Constant.URL_DB));
		dataSource.setUsername(resourceBundle.getString(Constant.USER_DB));
		dataSource.setPassword(resourceBundle.getString(Constant.PASSWORD_DB));
		return dataSource;
	}
	
	Properties additionalProperties() {
		Properties properties = new Properties();
		properties.setProperty(Constant.HIBERNATE_AUTO, Constant.UPDATE);
//		properties.setProperty(Constant.HIBERNATE_AUTO, Constant.CREATE);
		properties.setProperty(Constant.HIBERNATE_AUTO, Constant.NONE);
		properties.setProperty(Constant.HIBERNATE_ENABLE_LAZY, Constant.TRUE);
		return properties;
	}
}