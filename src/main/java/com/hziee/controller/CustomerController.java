package com.hziee.controller;

import com.hziee.pojo.Customer;
import com.hziee.pojo.PageResult;
import com.hziee.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping("findCustomerByPage")
    public PageResult<Customer> findCustomerByPage(@RequestParam(name = "page", defaultValue = "1") int page,
                                                   @RequestParam(name = "rows", defaultValue = "7") int rows) {

        PageResult<Customer> result = customerService.finaAll(page, rows);

        return result;
    }

    @GetMapping("findCustomerById")
    public Customer findCustomerById(int id) {
        return customerService.findCustomerById(id);
    }




}
