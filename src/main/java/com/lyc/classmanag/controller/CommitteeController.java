package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.Committee;
import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.service.CommitteeService;
import com.lyc.classmanag.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.util.List;

@Controller
public class CommitteeController {
    @Autowired
    CommitteeService committeeService;
    @Autowired
    StudentService studentService;

    @RequestMapping("queryCommitteeAll")
    public String queryCommitteeAll(Model model){
        List<Committee> committeeList = committeeService.queryCommitteeAll();
        model.addAttribute("committeeList",committeeList);
        return "committeeTest";
    }

    @RequestMapping(value = "/insertCommittee.action",method = RequestMethod.POST)
    @ResponseBody
    public String insertCommittee(Committee committee){
        Student student = studentService.findStudent(committee.getUserId(),committee.getName());
        if(student!=null){
            int rows = committeeService.insertCommittee(committee);
            if (rows>0){
                return "OK";
            }else{
                return "FAIL";
            }
        }else {
            return "FAIL";
        }
    }
}
