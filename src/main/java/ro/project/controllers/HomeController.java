/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 *
 * @author Owner
 */
@Controller
public class HomeController {
    
    @RequestMapping(value = "/")
    public ModelAndView home (){
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
}
