package com.hziee.controller;

import com.hziee.dao.CommunicationDao;
import com.hziee.pojo.Communication;
import com.hziee.service.CommunicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("comm")
public class CommunicationController {

    @Autowired
    private CommunicationService communicationService;

    @RequestMapping("findAll")
    public List<Communication> findAll() {
        return communicationService.findAll();
    }


    @PostMapping("addComm")
    public void addComm(@RequestBody Communication communication) {
        communicationService.addComm(communication);

    }

    @DeleteMapping
    public void delComm(Integer commId) {
        communicationService.delComm(commId);
    }

    @GetMapping("findCommById")
    public Communication findCommById(Integer commId) {
       return communicationService.findCommById(commId);
    }
}
