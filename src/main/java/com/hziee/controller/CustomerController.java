package com.hziee.controller;

import com.hziee.pojo.Customer;
import com.hziee.pojo.PageResult;
import com.hziee.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("addCustomer")
    public void addCustomer(@RequestBody Customer customer) {
        customerService.addCustomer(customer);
    }

    @GetMapping("findCustomerById")
    public Customer findCustomerById(int id) {
        return customerService.findCustomerById(id);
    }

    @DeleteMapping
    public void deleteCustomer(Integer customerId) {
        customerService.deleteCustomer(customerId);
    }

    @PutMapping
    public void updateCustomer(@RequestBody Customer customer) {
        customerService.updateCustomer(customer);
    }
}
