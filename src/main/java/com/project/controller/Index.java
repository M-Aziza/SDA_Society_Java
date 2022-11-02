package com.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.services.BootcampServices;
import com.project.services.UserServices;

@Controller
public class Index {
    @Autowired
    private BootcampServices bootcampServ;
    @Autowired
    private UserServices userServ;

    @GetMapping("/")
    public String index( Model model, HttpSession session){
        Long user_id = (Long)session.getAttribute("user_id");
        if(user_id != null) {
        model.addAttribute("bootcamps", bootcampServ.allBootcamps());
        model.addAttribute("loinUser", userServ.findUserById(user_id));
        return "home.jsp";
        }else{
            model.addAttribute("bootcamps", bootcampServ.allBootcamps());
            return "home.jsp";
        }
    }

    // Go to BOOTCAMP page if there user in session
    @GetMapping("bootcamp/{id}")
    public String bootcamp( Model model, @PathVariable("id") Long bootcampId,  HttpSession session){
        Long user_id = (Long)session.getAttribute("user_id");
		if(user_id != null) {
            model.addAttribute("bootcamp", bootcampServ.findBootcamp(bootcampId));
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            return "bootcamp.jsp";
        }else{
            return "redirect:/logReg";
        }
    }

    // Go to PROFILE STUDENT page 
    @GetMapping("profile/{id}")
    public String profile( Model model , HttpSession session,@PathVariable("id") Long id){
        Long user_id = (Long)session.getAttribute("user_id");
        if(user_id != null) {
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            model.addAttribute("student", userServ.findUserById(id));
            return "profile.jsp";
        }else{
            return "redirect:/";
        }
    }
    @GetMapping("goProfile/{id}")
    public String profileShow( Model model , HttpSession session){
        Long user_id = (Long)session.getAttribute("user_id");
        if(user_id != null) {
            // moedl.addAttribute("")
            model.addAttribute("loinUser", userServ.findUserById(user_id));

            return "profileStudent.jsp";
        }else{
            return "redirect:/";
        }
    }

    @GetMapping("fatimah")
    public String fatima( Model model , HttpSession session){
        Long user_id = (Long)session.getAttribute("user_id");
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            return "fatimah.jsp";
    }
}
