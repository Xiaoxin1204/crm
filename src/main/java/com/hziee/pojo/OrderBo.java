package com.hziee.pojo;

import java.util.List;

public class OrderBo extends Order{
    private List<Product> products;

    public List<Product> getProducts() {
        return products;
    }

    @Override
    public String toString() {
        return "OrderBo{" +
                "products=" + products +
                '}';
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}

