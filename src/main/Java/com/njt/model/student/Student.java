package com.njt.model.student;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idStudent")
    private int idStudenta;

    @Column(name = "ime", unique = true, nullable = false)
    private String name;

    @Column(name = "prezime", unique = true, nullable = false)
    private String surname;

    @Column(name = "godinaUpisa", unique = true, nullable = false)
    private Date dateOfEnrolling;

    @Column(name = "smer", unique = true, nullable = false)
    private String course;

    @Column(name = "brojIndeksa", unique = true, nullable = false)
    private String indexNumber;

    public int getIdStudenta() {
        return idStudenta;
    }

    public Student setIdStudenta(int idStudenta) {
        this.idStudenta = idStudenta;
        return this;
    }

    public String getName() {
        return name;
    }

    public Student setName(String name) {
        this.name = name;
        return this;
    }

    public String getSurname() {
        return surname;
    }

    public Student setSurname(String surname) {
        this.surname = surname;
        return this;
    }

    public Date getDateOfEnrolling() {
        return dateOfEnrolling;
    }

    public Student setDateOfEnrolling(Date dateOfEnrolling) {
        this.dateOfEnrolling = dateOfEnrolling;
        return this;
    }

    public String getCourse() {
        return course;
    }

    public Student setCourse(String course) {
        this.course = course;
        return this;
    }

    public String getIndexNumber() {
        return indexNumber;
    }

    public Student setIndexNumber(String indexNumber) {
        this.indexNumber = indexNumber;
        return this;
    }
}
