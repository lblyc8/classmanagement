package com.lyc.classmanag.service;

import com.lyc.classmanag.entity.Committee;

import java.util.List;

public interface CommitteeService {
    List<Committee> queryCommitteeAll();

    int insertCommittee(Committee committee);
}
