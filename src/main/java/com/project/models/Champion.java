package com.project.models;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="champions")
public class Champion {

    @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    

    private String img;

    // Relationship
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="bootcamp_id")
    private Bootcamp bootcamp;


	public Champion() {
	}


    public Long getId() {
        return id;
    }


    public void setId(Long id) {
        this.id = id;
    }


    public String getImg() {
        return img;
    }


    public void setImg(String img) {
        this.img = img;
    }


    public Bootcamp getBootcamp() {
        return bootcamp;
    }


    public void setBootcamp(Bootcamp bootcamp) {
        this.bootcamp = bootcamp;
    }

    
}
