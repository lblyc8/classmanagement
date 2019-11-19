package com.lyc.classmanag.dao;

import com.lyc.classmanag.entity.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentDao {
    List<Student> queryStudentAll();
    Student findStudent(@Param("Sno") String Sno,
                        @Param("Name") String Name);
}
