package com.hziee.controller;

import com.hziee.pojo.Order;
import com.hziee.pojo.OrderBo;
import com.hziee.pojo.Product;
import com.hziee.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @GetMapping("findAllOrder")
    public List<Order> findAllOrder() {
        return orderService.findAllOrder();
    }

    @GetMapping("findOrderDetail")
    public OrderBo findOrderDetail(Integer orderId) {
        return orderService.findOrderDetail(orderId);
    }

    @PostMapping("addOrder")
    public void addOrder(@RequestBody OrderBo orderBo) {

        orderService.addOrder(orderBo);
    }

    @DeleteMapping
    public void delOrder(Integer orderId) {
        orderService.delOrder(orderId);
    }
}
