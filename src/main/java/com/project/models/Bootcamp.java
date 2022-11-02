package com.project.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name="bootcamps")
public class Bootcamp {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

    
    @NotEmpty(message="Title is required!")
    @Size(min = 2, max = 100, message="Title must be between 2 and 20 characters" )
    private String title;
    
    @NotEmpty(message="Description is required!")
    @Size(min = 2, max = 500, message="Description must be between 2 and 20 characters" )
    private String description;
    
    private String img;

	// Relationship
	@OneToMany(mappedBy="bootcamp", fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	private List<User> students;

    @OneToMany(mappedBy="bootcamp", fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	private List<Project> projects;

    @OneToMany(mappedBy="bootcamp", fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	private List<Instructor> instructors;

    @OneToMany(mappedBy="bootcamp", fetch = FetchType.LAZY, cascade=CascadeType.ALL)
	private List<Champion> champions;
    
    public Bootcamp() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<User> getStudents() {
        return students;
    }

    public void setStudents(List<User> students) {
        this.students = students;
    }

    public List<Project> getProjects() {
        return projects;
    }

    public void setProjects(List<Project> projects) {
        this.projects = projects;
    }

    public List<Instructor> getInstructors() {
        return instructors;
    }

    public void setInstructors(List<Instructor> instructors) {
        this.instructors = instructors;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public List<Champion> getChampions() {
        return champions;
    }

    public void setChampions(List<Champion> champions) {
        this.champions = champions;
    }

}
