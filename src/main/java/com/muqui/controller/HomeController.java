/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.muqui.controller;

import com.muqui.modelo.User;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author mq12
 */
@Controller
public class HomeController {
    @RequestMapping(value="home")
    String home(ModelMap model){     
       
        model.addAttribute("user", new User());
        return "home";
    }
     @RequestMapping(value = "home", method = RequestMethod.POST)
    public String save(@ModelAttribute("user") @Valid User user, BindingResult bindingResult) {

       
        if (bindingResult.hasErrors()) {
            System.out.println(" Hay error");

           

            return "home";
        } else {
           
 System.out.println(" todo esta OK");
            return "home";
        }

    }
}
