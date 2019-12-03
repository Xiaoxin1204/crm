package com.hziee.controller;

import com.hziee.pojo.Customer;
import com.hziee.pojo.PageResult;
import com.hziee.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public Customer findCustomerById(Integer customerId) {
        return customerService.findCustomerById(customerId);
    }

    @DeleteMapping
    public void deleteCustomer(Integer customerId) {
        customerService.deleteCustomer(customerId);
    }

    @PutMapping
    public void updateCustomer(@RequestBody Customer customer) {
        customerService.updateCustomer(customer);
    }

    /**
     * @author:xiaoxin on 2019/12/3
     * @return:
     * @description: 查询公海中的客户数据
     */
    @GetMapping("findCustomerInSeas")
    public List<Customer> findCustomerInSeas() {
        return customerService.findCustomerInSeas();
    }

    /**
     * @author:xiaoxin on 2019/12/3
     * @return:
     * @description: 将客户放入公海
     */
    @GetMapping("toHighSeas")
    public void toHighSeas(Integer customerId) {
        customerService.toHighSeas(customerId);
    }

    /**
     * @author:xiaoxin on 2019/12/3
     * @return:
     * @description: 从公海中领取客户
     */
    @GetMapping("receiveCustomer")
    public void receiveCustomer(Integer customerId) {
        customerService.receiveCustomer(customerId);
    }
}
