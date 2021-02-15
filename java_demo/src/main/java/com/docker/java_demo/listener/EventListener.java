package com.docker.java_demo.listener;

import com.docker.java_demo.JavaDemoApplication;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContextInitializer;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.stereotype.Component;

@Component
public class EventListener implements ApplicationContextInitializer {
    private static final Logger logger = LoggerFactory.getLogger(JavaDemoApplication.class);

    @Override
    public void initialize(ConfigurableApplicationContext configurableApplicationContext) {

        logger.info(1111 + configurableApplicationContext.getApplicationName());
    }
}
