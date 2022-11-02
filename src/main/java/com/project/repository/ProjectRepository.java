package com.project.repository;


import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.models.Project;
@Repository

public interface ProjectRepository extends CrudRepository<Project, Long> {
    List<Project> findAll();
    Optional<Project>findById(Long id);
}
