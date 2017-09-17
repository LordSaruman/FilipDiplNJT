package com.njt.controller.User;

import com.njt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/obaveze")
    public String allMyDuties(ModelMap modelMap) {
        return "all-my-duties-page";
    }

    @RequestMapping(value = "/administracija")
    public String administrationAction(ModelMap modelMap) {
        return "administration-page";
    }

    @RequestMapping(value = "/svi-zaposleni")
    public String allEmployeesAction(ModelMap modelMap) {
        return "all-employees-page";
    }

    @RequestMapping(value = "/moj-profil")
    public String myProfileAction(ModelMap modelMap) {
        return "my-profile-page";
    }

    @RequestMapping(value = "/svi-zaposleni-pronadjeni")
    public String allEmployeesPage(ModelMap modelMap){
        modelMap.addAttribute("allEmployees", userService.findAllUsers());
        return "all-employees-found-page";
    }
}
