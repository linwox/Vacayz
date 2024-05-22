package se.yrgo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @RequestMapping("/home.html")
    public ModelAndView homePage() {
        int customerCount = 1;
        return new ModelAndView("/WEB-INF/jsp/home.jsp", "customerCount", customerCount);
    }
}
