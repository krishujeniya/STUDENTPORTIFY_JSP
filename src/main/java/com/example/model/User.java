package com.example.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Column;
import java.util.Date;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "birthdate")
    private Date birthdate;

    @Column(name = "email")
    private String email;

    @Column(name = "whatsapp")
    private String whatsapp;

    @Column(name = "linkedin")
    private String linkedin;

    @Column(name = "website")
    private String website;

    @Column(name = "education")
    private String education;

    @Column(name = "interests")
    private String interests;

    @Column(name = "skills")
    private String skills;

    @Column(name = "projects")
    private String projects;

    @Column(name = "internships")
    private String internships;

    @Column(name = "open_to_work")
    private boolean openToWork;

    // Constructors
    public User() {
        // Default constructor required by JPA
    }

    public User(String name, Date birthdate, String email, String whatsapp, String linkedin,
                String website, String education, String interests, String skills, String projects,
                String internships, boolean openToWork) {
        this.name = name;
        this.birthdate = birthdate;
        this.email = email;
        this.whatsapp = whatsapp;
        this.linkedin = linkedin;
        this.website = website;
        this.education = education;
        this.interests = interests;
        this.skills = skills;
        this.projects = projects;
        this.internships = internships;
        this.openToWork = openToWork;
    }

    // Getter and Setter methods
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

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWhatsapp() {
        return whatsapp;
    }

    public void setWhatsapp(String whatsapp) {
        this.whatsapp = whatsapp;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getInterests() {
        return interests;
    }

    public void setInterests(String interests) {
        this.interests = interests;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getProjects() {
        return projects;
    }

    public void setProjects(String projects) {
        this.projects = projects;
    }

    public String getInternships() {
        return internships;
    }

    public void setInternships(String internships) {
        this.internships = internships;
    }

    public boolean isOpenToWork() {
        return openToWork;
    }

    public void setOpenToWork(boolean openToWork) {
        this.openToWork = openToWork;
    }

    // You can override toString() method for debugging purposes if needed
    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthdate=" + birthdate +
                ", email='" + email + '\'' +
                ", whatsapp='" + whatsapp + '\'' +
                ", linkedin='" + linkedin + '\'' +
                ", website='" + website + '\'' +
                ", education='" + education + '\'' +
                ", interests='" + interests + '\'' +
                ", skills='" + skills + '\'' +
                ", projects='" + projects + '\'' +
                ", internships='" + internships + '\'' +
                ", openToWork=" + openToWork +
                '}';
    }
}
