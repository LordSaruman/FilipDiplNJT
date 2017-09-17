package com.njt.model.subject;

import javax.persistence.*;

@Entity
@Table(name = "predmet")
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPredmeta;

    @Column(name = "nazivPredmeta", unique = true, nullable = false)
    private String nameOfTheSubject;

    @Column(name = "tipStudija", unique = true, nullable = false)
    private String typeOfStudies;

    @Column(name = "godina", unique = true, nullable = false)
    private int year;

    public int getIdPredmeta() {
        return idPredmeta;
    }

    public Subject setIdPredmeta(int idPredmeta) {
        this.idPredmeta = idPredmeta;
        return this;
    }

    public String getNameOfTheSubject() {
        return nameOfTheSubject;
    }

    public Subject setNameOfTheSubject(String nameOfTheSubject) {
        this.nameOfTheSubject = nameOfTheSubject;
        return this;
    }

    public String getTypeOfStudies() {
        return typeOfStudies;
    }

    public Subject setTypeOfStudies(String typeOfStudies) {
        this.typeOfStudies = typeOfStudies;
        return this;
    }

    public int getYear() {
        return year;
    }

    public Subject setYear(int year) {
        this.year = year;
        return this;
    }
}
