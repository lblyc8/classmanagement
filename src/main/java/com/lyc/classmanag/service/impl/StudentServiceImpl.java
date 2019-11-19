package com.lyc.classmanag.service.impl;

import com.lyc.classmanag.dao.StudentDao;
import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public List<Student> queryStudentAll() {
        List<Student> studentList = studentDao.queryStudentAll();
        return studentList;
    }

    @Override
    public Student findStudent(String Sno, String Name) {
        Student student = studentDao.findStudent(Sno, Name);
        return student;
    }
}
