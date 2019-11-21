package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.Committee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommitteeDao {
    List<Committee> queryCommitteeAll();

    int insertCommittee(Committee committee);

    int deleteCommittee(String UserId);

    Committee queryCommitteeById(@Param("UserId") String UserId);

    int updateCommittee(Committee committee);
}
