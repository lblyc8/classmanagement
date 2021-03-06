package com.lyc.classmanag.service;

import com.lyc.classmanag.entity.Student;

import java.util.List;

public interface StudentService {
    List<Student> queryStudentAll();

    Student findStudent(String Sno,String Name);

    int insertStudent(Student student);

    int deleteStudent(String Sno);

    Student queryStudentById(String Sno);

    int updateStudent(Student student);
}
