package com.njt.controller.SchoolYear;

import com.njt.service.schoolYear.SchoolYearService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class SchoolYearController {

    @Autowired
    private SchoolYearService schoolYearService;

    @RequestMapping(value = "/skolska-godina/trenutna")
    public String currentSchoolYear(ModelMap modelMap) {
        return "current-school-year-page";
    }


    @RequestMapping(value = "/skolska-godina/prosla")
    public String previousSchoolYear(ModelMap modelMap) {
        return "previous-school-year-page";
    }

    @RequestMapping(value = "/skolska-godina/podesavanja")
    public String administrationAction(ModelMap modelMap) {
        return "school-year-settings-page";
    }

    @RequestMapping(value = "/skolska-godina/svi")
    public String allSchoolYear(ModelMap modelMap) {
        modelMap.addAttribute("allSchoolYear", schoolYearService.findAllSchoolYear());
        return "all-school-year-page";
    }
}
