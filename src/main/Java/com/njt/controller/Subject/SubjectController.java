package com.njt.controller.Subject;

import com.njt.service.subject.SubjectService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class SubjectController {

    @Autowired
    private SubjectService subjectService;

    @RequestMapping(value = "/predmet/")
    public String allSubjectsAction(ModelMap model) {
        return "all-subjects-page";
    }

    @RequestMapping(value = "/predmet/moji-predmeti")
    public String allActiveSubjects(ModelMap modelMap) {
        return "all-my-subjects-page";
    }

    @RequestMapping(value = "/predmet/dodaj")
    public String addNewSubject(ModelMap modelMap) {
        return "add-new-subject-page";
    }

    @RequestMapping(value = "/predmet/svi")
    public String allSubjectsFound(ModelMap modelMap){
        modelMap.addAttribute("allSubjects", subjectService.findAllSubjects());
        return "all-subjects-found";
    }
}
