package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/queryStudentAll")
    public String queryStudentAll(Model model){
        List<Student> studentList = studentService.queryStudentAll();
        model.addAttribute("studentList",studentList);
        return "admin/studentPage";
    }

    @RequestMapping(value = "/insertStudent.action",method = RequestMethod.POST)
    @ResponseBody
    public String insertStudent(Student student){
        int rows= studentService.insertStudent(student);
        if (rows > 0) {
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "deleteStudent.action",method = RequestMethod.POST)
    @ResponseBody
    public String deleteStudent(String Sno){
        int rows = studentService.deleteStudent(Sno);
        if (rows > 0) {
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "queryStudentById.action")
    @ResponseBody
    public Student queryStudentById(String Sno){
        return studentService.queryStudentById(Sno);
    }

    @RequestMapping(value = "updateStudent.action")
    @ResponseBody
    public String updateStudent(Student student){
        int rows= studentService.updateStudent(student);
        if (rows > 0) {
            return "OK";
        }else{
            return "FAIL";
        }
    }
}
