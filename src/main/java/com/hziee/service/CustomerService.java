package com.hziee.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hziee.dao.CustomerDao;
import com.hziee.pojo.Customer;
import com.hziee.pojo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
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
        Example example = new Example(Customer.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.orEqualTo("state",1);
        criteria.orEqualTo("state",3);
        List<Customer> customers = customerDao.selectByExample(example);
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
        customer.setCreateTime(new Date());
        customerDao.insertSelective(customer);
    }

    public void deleteCustomer(Integer customerId) {
        customerDao.deleteByPrimaryKey(customerId);
    }

    public void updateCustomer(Customer customer) {
        customerDao.updateByPrimaryKeySelective(customer);
    }

    public void toHighSeas(Integer customerId) {
        Customer customer = new Customer();
        customer.setId(customerId);
        Customer customer1 = customerDao.selectOne(customer);

        customer1.setState(2);
        customer1.setEmpId(null);
        customerDao.updateByPrimaryKey(customer1);
    }

    public void receiveCustomer(Integer customerId) {
        Customer customer = customerDao.selectByPrimaryKey(customerId);
        customer.setEmpId(1);
        customer.setState(1);
        customerDao.updateByPrimaryKey(customer);
    }

    public List<Customer> findCustomerInSeas() {
        Example example = new Example(Customer.class);
        Example.Criteria criteria = example.createCriteria();
        criteria.andEqualTo("state",0);
        List<Customer> customers = customerDao.selectByExample(example);
        return customers;
    }
}
