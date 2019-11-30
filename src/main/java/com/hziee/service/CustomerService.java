package com.hziee.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hziee.dao.CustomerDao;
import com.hziee.pojo.Customer;
import com.hziee.pojo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public PageResult<Customer> finaAll(int page, int rows) {
        //开启分页
        PageHelper.startPage(page,rows);
        List<Customer> customers = customerDao.selectAll();
        PageInfo pageInfo = new PageInfo(customers);
        return new PageResult<>(pageInfo.getTotal(),pageInfo.getList(),pageInfo.getPages());
    }
    public Customer findCustomerById(int customerId) {
        return customerDao.selectByPrimaryKey(customerId);
    }
    public void addCustomer(Customer customer) {
        String uuid = UUID.randomUUID().toString().substring(0,6);
        customer.setSerialNumber(uuid);
        customer.setState(1);
        customer.setCompId(1);
        customer.setEmpId(1);
        customerDao.insertSelective(customer);
    }

    public void deleteCustomer(Integer customerId) {
        customerDao.deleteByPrimaryKey(customerId);
    }

    public void updateCustomer(Customer customer) {
        customerDao.updateByPrimaryKeySelective(customer);
    }
}
