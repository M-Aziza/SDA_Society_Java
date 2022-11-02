package com.project.services;

import java.util.List;
import java.util.Optional;

// import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.models.Bootcamp;
import com.project.repository.BootcampRepository;

@Service
public class BootcampServices {
    @Autowired 
    private BootcampRepository bootcampRepo;

    // returns all the BOOTCAMP
    public List<Bootcamp> allBootcamps(){
        return bootcampRepo.findAll();
    }

    // public ImageIO getImeg(){
    //     return bootcampRepo.findByImg();
    // }
    

    // FIND BOOTCAMP BY ID
    public Bootcamp findBootcamp(Long id){
        Optional<Bootcamp> potential = bootcampRepo.findById(id);
        if(potential.isPresent()) {
            return potential.get();
        }
        else {
            return null;    		
        }
    }

}
