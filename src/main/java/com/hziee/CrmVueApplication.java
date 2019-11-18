package com.hziee;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.hziee.dao")
public class CrmVueApplication {

    public static void main(String[] args) {
        SpringApplication.run(CrmVueApplication.class, args);
    }

}
