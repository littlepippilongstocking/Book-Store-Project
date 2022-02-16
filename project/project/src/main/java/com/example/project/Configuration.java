package com.example.project;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@org.springframework.context.annotation.Configuration
public class Configuration implements WebMvcConfigurer {

        @Override
        public void addResourceHandlers(ResourceHandlerRegistry registry) {
            registry.addResourceHandler("/files/**")
                    .addResourceLocations("/WEB-INF/files/");
        }

        @Bean
        public ViewResolver viewResolver() {
            InternalResourceViewResolver bean = new InternalResourceViewResolver();
            bean.setPrefix("/WEB-INF/jsp/");
            bean.setSuffix(".jsp");
            bean.setOrder(0);
            return bean;
        }
    }

