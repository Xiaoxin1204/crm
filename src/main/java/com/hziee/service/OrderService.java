package com.hziee.service;

import com.hziee.dao.OrderDao;
import com.hziee.dao.ProductDao;
import com.hziee.pojo.Order;
import com.hziee.pojo.OrderBo;
import com.hziee.pojo.Product;
import com.hziee.utils.OrderIdUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderService {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private ProductDao productDao;


    public List<Order> findAllOrder() {
        List<Order> orders = orderDao.selectAll();
        System.out.println(orders);
        return orders;
    }

    public OrderBo findOrderDetail(Integer orderId) {
        Order order = new Order();
        order.setId(orderId);
        Order cur_order =orderDao.selectByPrimaryKey(order);
        OrderBo orderBo = new OrderBo();
        BeanUtils.copyProperties(cur_order,orderBo);
        Product product = new Product();
        product.setOrderId(orderId);
        List<Product> products = productDao.select(product);
        orderBo.setProducts(products);
        return orderBo;
    }

    public void addOrder(OrderBo orderBo) {
        Order order = new Order();
        order.setSerialNumber(OrderIdUtil.generateUniqueKey());
        order.setAddress(orderBo.getAddress());
        order.setCustomerId(orderBo.getCustomerId());
        order.setState(orderBo.getState());
        orderDao.insertSelective(order);
        Order order1 = orderDao.selectOne(order);
        List<Product> products = orderBo.getProducts();
        products.forEach(product -> {
            product.setOrderId(order1.getId());
            product.setBusId(1);
            productDao.insertSelective(product);
        });
    }

    public void delOrder(Integer orderId) {
        Product product = new Product();
        product.setOrderId(orderId);
        productDao.delete(product);
        orderDao.deleteByPrimaryKey(orderId);
    }
}
