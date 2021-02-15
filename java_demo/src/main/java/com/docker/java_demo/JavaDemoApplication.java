package com.docker.java_demo;

import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.docker.java_demo"})
@Slf4j
public class JavaDemoApplication {

    private static final Logger logger = LoggerFactory.getLogger(JavaDemoApplication.class);

    public static void main(String[] args) {
        logger.info("Welcome to spring boot java demo");
        SpringApplication.run(JavaDemoApplication.class, args);
        logger.info("Welcome to spring boot java demo2");

    }

}
