package com.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.models.Bootcamp;

@Repository
public interface BootcampRepository extends CrudRepository<Bootcamp, Long> {
    List<Bootcamp> findAll();
    Optional<Bootcamp>findById(Long id);
    // Optional<Bootcamp> findByImg( byte[] img);

}
