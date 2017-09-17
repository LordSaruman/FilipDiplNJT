package com.njt.model.user;

import com.njt.model.User;

import javax.persistence.*;

@Entity
@Table(name = "zaposleni")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idKorisnika;

    @Column(name = "ime", unique = true, nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "idKorisnik")
    private User user;

    public int getIdKorisnika() {
        return idKorisnika;
    }

    public Employee setIdKorisnika(int idKorisnika) {
        this.idKorisnika = idKorisnika;
        return this;
    }

    public String getName() {
        return name;
    }

    public Employee setName(String name) {
        this.name = name;
        return this;
    }

    public User getUser() {
        return user;
    }

    public Employee setUser(User user) {
        this.user = user;
        return this;
    }
}
