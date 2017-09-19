package com.njt.model.attend;

import com.njt.model.schoolYear.SchoolYear;
import com.njt.model.student.Student;
import com.njt.model.subject.Subject;

import javax.persistence.*;

@Entity
@Table(name = "slusa", uniqueConstraints = @UniqueConstraint(columnNames = {"idStudent", "idPredmet", "idSkolskaGodina"}))
public class Attend {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idSlusa")
    private int id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idStudent")
    private Student student;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idPredmet")
    private Subject subject;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "idSkolskaGodina")
    private SchoolYear schoolYear;

    public int getId() {
        return id;
    }

    public Attend setId(int id) {
        this.id = id;
        return this;
    }

    public Student getStudent() {
        return student;
    }

    public Attend setStudent(Student student) {
        this.student = student;
        return this;
    }

    public Subject getSubject() {
        return subject;
    }

    public Attend setSubject(Subject subject) {
        this.subject = subject;
        return this;
    }

    public SchoolYear getSchoolYear() {
        return schoolYear;
    }

    public Attend setSchoolYear(SchoolYear schoolYear) {
        this.schoolYear = schoolYear;
        return this;
    }
}
