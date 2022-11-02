package com.project.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="instructors")
public class Instructor {
    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	
	@Pattern(regexp = "^[A-Za-z ]*$", message = "User Name must be letters only")
	@NotEmpty(message="Username is required!")
	@Size(min=3, max=30, message="Username must be between 3 and 30 characters")
	private String name;

    @NotEmpty(message="Email is required!")
	@Email(message="Please enter a valid email!")
	private String email;

    // Relationship
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="bootcamp_id")
    private Bootcamp bootcamp;

	public Instructor() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Bootcamp getBootcamp() {
		return bootcamp;
	}

	public void setBootcamp(Bootcamp bootcamp) {
		this.bootcamp = bootcamp;
	}

	
}
