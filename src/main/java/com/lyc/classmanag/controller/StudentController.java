package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/queryStudentAll")
    public String queryStudentAll(Model model){
        List<Student> studentList = studentService.queryStudentAll();
        model.addAttribute("studentList",studentList);
        return "studentTest";
    }
}
