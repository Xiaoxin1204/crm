package com.hziee.service;

import com.hziee.dao.LinkmanDao;
import com.hziee.pojo.Customer;
import com.hziee.pojo.Linkman;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LinkmanService {
    @Autowired
    private LinkmanDao linkmanDao;
    public List<Linkman> findLinkmanByCustomerId(Integer customerId) {
        Linkman linkman = new Linkman();
        linkman.setCustomerId(customerId);
        List<Linkman> linkmanList = linkmanDao.select(linkman);
        return linkmanList;
    }

    public void updateLinkman(Linkman linkman) {
        linkmanDao.updateByPrimaryKeySelective(linkman);
    }

    public void addLinkman(Linkman linkman) {
        linkman.setCustomerId(1);
        linkmanDao.insertSelective(linkman);
    }

    public void delLinkman(Integer linkmanId) {
        linkmanDao.deleteByPrimaryKey(linkmanId);
    }

    public Linkman findLinkmanById(Integer id) {
        return linkmanDao.selectByPrimaryKey(id);
    }
}
