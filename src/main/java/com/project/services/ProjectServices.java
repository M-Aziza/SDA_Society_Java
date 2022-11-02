package com.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.Bootcamp;
import com.project.models.Project;
import com.project.models.User;
import com.project.repository.ProjectRepository;

@Service
public class ProjectServices {
    @Autowired
    private ProjectRepository projectRepo;

    // returns all the Projects
    public List<Project> allProject(){
        return projectRepo.findAll();
    }

    // FIND PROJECT BY ID
    public Project findProject(Long id){
        Optional<Project> potential = projectRepo.findById(id);
        if(potential.isPresent()) {
            return potential.get();
        }
        else {
            return null;    		
        }
    }


    // CREATE new 
    public Project createProject(Project newProject, User student, Bootcamp bootcamp){
        newProject.setStudent(student);
        newProject.setBootcamp(bootcamp);
        return projectRepo.save(newProject);
    }

    // Update PROJECT
	public Project updateProject(Project project, Long id){
        Project newPro = projectRepo.findById(id).get();
        newPro.setTitle(project.getTitle());
        newPro.setDescription(project.getDescription());
        newPro.setUrl(project.getUrl());
        return projectRepo.save(newPro);
	}


    // DELETE PROJECT
    public void deleteProject(Long id){
        projectRepo.deleteById(id);
    }

}
