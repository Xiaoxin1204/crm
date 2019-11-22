package com.hziee.controller;

import com.hziee.pojo.Linkman;
import com.hziee.service.LinkmanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("linkman")
public class LinkmanController {

    @Autowired
    private LinkmanService linkmanService;
    @RequestMapping("findLinkmanByCustomerId")
    public List<Linkman> findLinkmanByCustomerId(Integer customerId) {
        List<Linkman> linkmanList = linkmanService.findLinkmanByCustomerId(customerId);
        return linkmanList;
    }
}
