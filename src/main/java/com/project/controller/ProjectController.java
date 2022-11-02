package com.project.controller;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.project.models.Bootcamp;
import com.project.models.Project;
import com.project.models.User;
import com.project.services.ProjectServices;
import com.project.services.UserServices;
@Controller
public class ProjectController {

    @Autowired
    private UserServices userServ;
    @Autowired
    private ProjectServices projectServ;

    // Go to ADD PROJECT page 
    @GetMapping("addProject")
    public String goCreateProject(HttpSession session, @ModelAttribute ("project") Project newProject, Model model){
        Long user_id = (Long)session.getAttribute("user_id");
        if(user_id != null) {
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            return "addProject.jsp";
        }else{
            return "redirect:/";
        }
    }
    // Add PROJECT
    @PostMapping("addProject")
    public String CreateProject(HttpSession session, @Valid @ModelAttribute ("project") Project newProject, BindingResult result, Model model){
        Long user_id = (Long)session.getAttribute("user_id");
        if (result.hasErrors()) {
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            return "addProject.jsp";
        } else {
            User user = userServ.findUserById(user_id);
            Bootcamp bootcamp = user.getBootcamp();
            projectServ.createProject(newProject, user, bootcamp);
            return "redirect:/profile/"+user_id;
        }
    }

    // UPDATE show
    @GetMapping("editProject/{id}")
    public String goEditProject(Model model ,@PathVariable ("id") Long projectId, HttpSession session, @ModelAttribute ("project") Project UpdateProject ) {
        Long user_id = (Long)session.getAttribute("user_id");
        if(user_id != null) {
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            model.addAttribute("project", projectServ.findProject(projectId));
        return "editProject.jsp";
        }
        else{
        return "redirect:/";
        }
    }

    @PutMapping("editProject/{id}" )
    public String editProject(@Valid @ModelAttribute("project") Project newProject, BindingResult result, @PathVariable ("id") Long id, HttpSession session, Model model) {
        Long user_id = (Long)session.getAttribute("user_id");
        if (result.hasErrors()) {
            model.addAttribute("loinUser", userServ.findUserById(user_id));
            return "editProject.jsp";
        } else {
            projectServ.updateProject(newProject, id);
            return "redirect:/profile/"+user_id;
        }
    }

    // DELETE PROJECT
    @DeleteMapping("delete/{id}")
    public String DeleteProject(HttpSession session, @PathVariable("id") Long projectId, Model model){
        Long user_id = (Long)session.getAttribute("user_id");
        // Project project = projectServ.findProject(projectId);
        // System.out.println(project.getStudent().getId());
        // System.out.println("user id " + user_id);
        // if(user_id == project.getStudent().getId()) {
            projectServ.deleteProject(projectId);
            return "redirect:/profile/"+user_id;
        // }else{
        //     return "redirect:/profile/"+user_id;
        // }
    }

}
