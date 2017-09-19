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

    @Column(name = "smer", unique = true, nullable = false)
    private String course;

    @Column(name = "brojESPB", unique = true, nullable = false)
    private int espb;

    @Column(name = "brojStudenata", unique = true, nullable = false)
    private int numberOfStudents;

    @Column(name = "brojPredavaca", unique = true, nullable = false)
    private int numberOfLectures;

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

    public String getCourse() {
        return course;
    }

    public Subject setCourse(String course) {
        this.course = course;
        return this;
    }

    public int getEspb() {
        return espb;
    }

    public Subject setEspb(int espb) {
        this.espb = espb;
        return this;
    }

    public int getNumberOfStudents() {
        return numberOfStudents;
    }

    public Subject setNumberOfStudents(int numberOfStudents) {
        this.numberOfStudents = numberOfStudents;
        return this;
    }

    public int getNumberOfLectures() {
        return numberOfLectures;
    }

    public Subject setNumberOfLectures(int numberOfLectures) {
        this.numberOfLectures = numberOfLectures;
        return this;
    }
}
