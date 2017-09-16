package com.njt.controller.Subject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class SubjectController {

    @RequestMapping(value = "/predmet/")
    public String allStudentsAction(ModelMap model) {
        return "all-subjects-page";
    }

    @RequestMapping(value = "/predmet/moji-predmeti")
    public String allActiveStudents(ModelMap modelMap) {
        return "all-my-subjects-page";
    }

    @RequestMapping(value = "/predmet/dodaj")
    public String addNewStudent(ModelMap modelMap) {
        return "add-new-subject-page";
    }
}
