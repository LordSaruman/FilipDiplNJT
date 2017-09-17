package com.njt.controller.Student;

import com.njt.service.student.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/studenti/")
    public String allStudentsAction(ModelMap model) {
        return "all-students-page";
    }

    @RequestMapping(value = "/studenti/aktivni")
    public String allActiveStudents(ModelMap modelMap) {
        return "all-active-students-page";
    }

    @RequestMapping(value = "/studenti/dodaj")
    public String addNewStudent(ModelMap modelMap) {
        return "add-new-student-page";
    }

    @RequestMapping(value = "/studenti/svi")
    public String allStudents(ModelMap modelMap){
        modelMap.addAttribute("allStudents", studentService.findAllStudents());
        return "all-of-students-page";
    }
}
