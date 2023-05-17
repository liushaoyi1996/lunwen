package com.tz;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.Properties;

//表示该类是一个spring的配置信息类
@Configuration
//表示扫描包中的类的注解
@ComponentScan
//表示读取其他配置文件信息
@PropertySource("classpath:dbconfig.properties")
//开启声明式事务功能
@EnableTransactionManagement
//启用切面代理
@EnableAspectJAutoProxy
public class AppConfig {

    private static Logger LOGGER = Logger.getLogger(AppConfig.class);

    @Autowired
    Environment env;

    @Bean
    public DataSource getDataSource() throws SQLException {
        LOGGER.debug("getDataSource() run...");
        BasicDataSource bds = new BasicDataSource();
        bds.setDriverClassName(env.getProperty("jdbc.mysql.driver"));
        bds.setUrl(env.getProperty("jdbc.mysql.url"));
        bds.setUsername(env.getProperty("jdbc.mysql.user"));
        bds.setPassword(env.getProperty("jdbc.mysql.password"));
        bds.setInitialSize(10);
        bds.setMaxIdle(5);
        return bds;
    }

    @Bean
    public LocalSessionFactoryBean getLocalSessionFactoryBean() throws SQLException {
        LOGGER.debug("getLocalSessionFactoryBean() run...");
        //实例化
        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
        //1.设置数据源
        localSessionFactoryBean.setDataSource(getDataSource());
        //2.方言
        Properties props = new Properties();
        props.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
        props.setProperty("hibernate.show_sql", "true");
        props.setProperty("hibernate.format_sql", "true");
        props.setProperty("hibernate.hbm2ddl.auto", "update");
        localSessionFactoryBean.setHibernateProperties(props);
        //3.注册实体类
        localSessionFactoryBean.setPackagesToScan("com.tz.entity");
        return localSessionFactoryBean;
    }

    @Bean
    public HibernateTransactionManager getHibernateTransactionManager(SessionFactory sessionFactory) {
        LOGGER.debug("PlatformTransactionManager() run...");
        HibernateTransactionManager htm =
                new HibernateTransactionManager(sessionFactory);
        return htm;
    }
}
