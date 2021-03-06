package com.lyc.classmanag.service;

import com.lyc.classmanag.entity.Committee;

import java.util.List;

public interface CommitteeService {
    List<Committee> queryCommitteeAll();

    int insertCommittee(Committee committee);

    int deleteCommittee(String UserId);

    Committee queryCommitteeById(String UserId);

    int updateCommittee(Committee committee);
}
