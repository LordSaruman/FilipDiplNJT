package com.njt.controller.Subject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class GraduateWork {

    @RequestMapping(value = "/zavrsni-rad/")
    public String allStudentsAction(ModelMap model) {
        return "all-graduate-work-page";
    }

    @RequestMapping(value = "/zavrsni-rad/aktivni-predmeti")
    public String allActiveStudents(ModelMap modelMap) {
        return "all-active-graduate-work-page";
    }

    @RequestMapping(value = "/zavrsni-rad/posmtrani-radovi")
    public String addNewStudent(ModelMap modelMap) {
        return "all-my-graduate-work-page";
    }
}
