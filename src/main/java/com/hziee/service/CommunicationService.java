package com.hziee.service;

import com.hziee.dao.CommunicationDao;
import com.hziee.pojo.Communication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
@Transactional
public class CommunicationService {
    @Autowired
    private CommunicationDao communicationDao;

    public List<Communication> findAll() {
        return communicationDao.selectAll();
    }

    public void addComm(Communication communication) {
        communication.setTime(new Date());
        communicationDao.insertSelective(communication);
    }

    public void delComm(Integer commId) {
        communicationDao.deleteByPrimaryKey(commId);
    }

    public Communication findCommById(Integer commId) {
        return communicationDao.selectByPrimaryKey(commId);
    }
}
