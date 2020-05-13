package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.StudentService;
import com.lyc.classmanag.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    UserService userService;

    @RequestMapping(value = "/queryStudentAll")
    public String queryStudentAll(Model model, HttpSession session){
        User user = (User) session.getAttribute("USER_SESSION");
        Set<String> roles = userService.findRole(user.getUserId());
        String role = roles.iterator().next();
        String page = userService.findPage(role);
        List<Student> studentList = studentService.queryStudentAll();
        model.addAttribute("studentList",studentList);
        return page + "/studentPage";
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
