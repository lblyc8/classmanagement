package com.lyc.classmanag.controller;

import com.lyc.classmanag.entity.Committee;
import com.lyc.classmanag.entity.Student;
import com.lyc.classmanag.service.CommitteeService;
import com.lyc.classmanag.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "admin/committeePage";
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

    @RequestMapping(value = "/deleteCommittee.action",method = RequestMethod.POST)
    @ResponseBody
    public String deleteCommittee(String UserId){
        int row = committeeService.deleteCommittee(UserId);
        if(row>0){
            return "OK";
        }else{
            return "FAIL";
        }
    }

    @RequestMapping(value = "/queryCommitteeById.action",method = RequestMethod.GET)
    public @ResponseBody Committee queryCommitteeById(String UserId){
        Committee committee=committeeService.queryCommitteeById(UserId);
        return committee;
    }

    @RequestMapping(value = "/updateCommittee.action",method = RequestMethod.POST)
    @ResponseBody
    public String updateCommittee(Committee committee){
        Student student = studentService.findStudent(committee.getUserId(),committee.getName());
        if(student!=null) {
            int rows = committeeService.updateCommittee(committee);
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }else {
            return "FAIL";
        }
    }
}
