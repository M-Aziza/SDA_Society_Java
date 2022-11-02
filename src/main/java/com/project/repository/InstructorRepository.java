package com.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.models.Instructor;


@Repository
public interface InstructorRepository extends CrudRepository<Instructor, Long> {
    List<Instructor> findAll();
    Optional<Instructor> findById(Long id);
}
