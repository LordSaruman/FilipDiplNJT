package com.njt.controller.SchoolYear;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class SchoolYearController {


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
}
