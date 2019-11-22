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

    public Customer findCustomerById(int id) {
        return customerDao.selectByPrimaryKey(id);
    }
}
