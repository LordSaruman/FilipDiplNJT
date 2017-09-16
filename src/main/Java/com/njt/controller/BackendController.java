package com.njt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/backend")
public class BackendController {

    @RequestMapping("/pocetna")
    public String indexAction(ModelMap model) {
        return "home-page";
    }

    @RequestMapping("/obavestenja/stara-obavestenja")
    public String oldNotificationsAction(ModelMap model) {
        return "old-notifications-page";
    }
}
