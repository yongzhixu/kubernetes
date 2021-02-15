package com.docker.java_demo.config;

import com.docker.java_demo.JavaDemoApplication;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationEvent;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.event.EventListener;

@Slf4j
@Configuration
public class DemoConfig {
    private static final Logger logger = LoggerFactory.getLogger(JavaDemoApplication.class);

    @EventListener
    public void eventListener(ApplicationEvent event) {
        logger.info(222 + event.toString());

    }
}
