package com.njt.controller.Attend;

import com.njt.model.schoolYear.SchoolYear;
import com.njt.service.attend.AttendService;
import com.njt.service.schoolYear.SchoolYearService;
import com.njt.service.student.StudentService;
import com.njt.service.subject.SubjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class AttendController {

    @Autowired
    private AttendService attendService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private SchoolYearService schoolYearService;
    @Autowired
    private SubjectService subjectService;

    @RequestMapping(value = "/obaveze")
    public String allMyDuties(ModelMap modelMap) {
        modelMap.addAttribute("allStudents", studentService.findAllStudents());
        modelMap.addAttribute("allSubjects", subjectService.findAllSubjects());
        modelMap.addAttribute("allAttends", attendService.findAll());
        modelMap.addAttribute("allSchoolYears", schoolYearService.findAllSchoolYear());

        return "all-my-duties-page";
    }

}
