package com.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.Instructor;
import com.project.repository.InstructorRepository;

@Service
public class InstructorService {

    @Autowired 
    private InstructorRepository instructorRepo;

    // returns all the Instructors
    public List<Instructor> allInstructor(){
        return instructorRepo.findAll();
    }

    // FIND Instructor BY ID
    public Instructor findInstructor(Long id){
        Optional<Instructor> potential = instructorRepo.findById(id);
        if(potential.isPresent()) {
            return potential.get();
        }
        else {
            return null;    		
        }
    }

}
