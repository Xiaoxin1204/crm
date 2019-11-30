package com.hziee;

import com.hziee.pojo.Customer;
import com.hziee.service.CustomerService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@SpringBootTest
class CrmVueApplicationTests {

    @Autowired
    private CustomerService customerService;

    @Test
    void testuuid() {
        String uuid = UUID.randomUUID().toString().substring(0,6);
        System.out.println(uuid);
    }
}
