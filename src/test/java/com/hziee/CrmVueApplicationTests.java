package com.hziee;

import com.hziee.pojo.Customer;
import com.hziee.service.CustomerService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class CrmVueApplicationTests {

    @Autowired
    private CustomerService customerService;
    @Test
    void findCustomer() {

    }

}
