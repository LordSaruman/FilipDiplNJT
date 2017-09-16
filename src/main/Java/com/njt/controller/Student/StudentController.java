package com.njt.controller.Student;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class StudentController {

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
}
