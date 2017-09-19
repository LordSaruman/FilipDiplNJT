package com.njt.controller.teaching;

import com.njt.service.teaching.TeachingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class TeachingController {

    @Autowired
    private TeachingService teachingService;

    @RequestMapping(value = "/administracija")
    public String administrationAction(ModelMap modelMap) {
        modelMap.addAttribute("allTeachings", teachingService.findAll());

        return "administration-page";
    }
}
