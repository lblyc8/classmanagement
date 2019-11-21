package com.lyc.classmanag.service.impl;

import com.lyc.classmanag.dao.CommitteeDao;
import com.lyc.classmanag.entity.Committee;
import com.lyc.classmanag.service.CommitteeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("committeeService")
@Transactional
public class CommitteeServiceImpl implements CommitteeService {

    @Autowired
    private CommitteeDao committeeDao;

    @Override
    public List<Committee> queryCommitteeAll() {
        List<Committee> committeeList = committeeDao.queryCommitteeAll();
        return committeeList;
    }

    @Override
    public int insertCommittee(Committee committee) {
        return committeeDao.insertCommittee(committee);
    }

    @Override
    public int deleteCommittee(String UserId) {
        return committeeDao.deleteCommittee(UserId);
    }

    @Override
    public Committee queryCommitteeById(String UserId) {
        Committee committee=committeeDao.queryCommitteeById(UserId);
        return committee;
    }

    @Override
    public int updateCommittee(Committee committee) {
        return committeeDao.updateCommittee(committee);
    }
}
