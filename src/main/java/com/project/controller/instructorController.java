package com.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.project.services.InstructorService;
import com.project.services.UserServices;

@Controller
public class instructorController {

	@Autowired
	private InstructorService instructorServ;
	@Autowired
	private UserServices userServ;

	@GetMapping("instructor/{id}")
		public String goProfileInstructor(Model model ,@PathVariable ("id") Long id, HttpSession session) {
			Long user_id = (Long)session.getAttribute("user_id");
			if(user_id != null) {
				model.addAttribute("loinUser", userServ.findUserById(user_id));
				model.addAttribute("instructor", instructorServ.findInstructor(id));
			return "instructor.jsp";
			}
			else{
			return "redirect:/";
			}
		}
}
