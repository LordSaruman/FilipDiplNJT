package com.njt.model.teaching;

import com.njt.model.schoolYear.SchoolYear;
import com.njt.model.subject.Subject;
import com.njt.model.user.Employee;

import javax.persistence.*;

@Entity
@Table(name = "predaje")
public class Teaching {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idPredaje")
    private int id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idZaposleni")
    private Employee employee;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idPredmet")
    private Subject subject;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idSkolskaGodina")
    private SchoolYear schoolYear;

    @Column(name = "tipNastave")
    private String typeOfLecture;

    public int getId() {
        return id;
    }

    public Teaching setId(int id) {
        this.id = id;
        return this;
    }

    public Employee getEmployee() {
        return employee;
    }

    public Teaching setEmployee(Employee employee) {
        this.employee = employee;
        return this;
    }

    public Subject getSubject() {
        return subject;
    }

    public Teaching setSubject(Subject subject) {
        this.subject = subject;
        return this;
    }

    public SchoolYear getSchoolYear() {
        return schoolYear;
    }

    public Teaching setSchoolYear(SchoolYear schoolYear) {
        this.schoolYear = schoolYear;
        return this;
    }

    public String getTypeOfLecture() {
        return typeOfLecture;
    }

    public Teaching setTypeOfLecture(String typeOfLecture) {
        this.typeOfLecture = typeOfLecture;
        return this;
    }
}
