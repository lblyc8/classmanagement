package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.Committee;

import java.util.List;

public interface CommitteeDao {
    List<Committee> queryCommitteeAll();

    int insertCommittee(Committee committee);
}
