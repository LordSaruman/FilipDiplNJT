package com.njt.controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class UserController {

    @RequestMapping(value = "/obaveze")
    public String allMyDuties(ModelMap modelMap) {
        return "all-my-duties-page";
    }

    @RequestMapping(value = "/administracija")
    public String administrationAction(ModelMap modelMap) {
        return "administration-page";
    }
}
