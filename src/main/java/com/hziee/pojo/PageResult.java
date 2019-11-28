package com.hziee.pojo;

import java.util.List;

public class PageResult<T> {
    private long total; //总条数
    private List<T> items;
    private int pages;//总页数

    @Override
    public String toString() {
        return "PageResult{" +
                "total=" + total +
                ", items=" + items +
                ", pages=" + pages +
                '}';
    }

    public PageResult(long total, List<T> items, int pages) {
        this.total = total;
        this.items = items;
        this.pages = pages;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public PageResult() {
    }

    public PageResult(long total, List<T> items) {
        this.total = total;
        this.items = items;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<T> getItems() {
        return items;
    }

    public void setItems(List<T> items) {
        this.items = items;
    }
}
