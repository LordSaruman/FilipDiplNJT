package com.njt.model.schoolYear;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "skolskagodina")
public class SchoolYear {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idSkolskaGodina;

    @Column(name = "skolskaGodina", unique = true, nullable = false)
    private int schoolYear;

    @Column(name = "aktivna", unique = true, nullable = false)
    private boolean activeSchoolYear;

    public int getIdSkolskaGodina() {
        return idSkolskaGodina;
    }

    public SchoolYear setIdSkolskaGodina(int idSkolskaGodina) {
        this.idSkolskaGodina = idSkolskaGodina;
        return this;
    }

    public int getSchoolYear() {
        return schoolYear;
    }

    public SchoolYear setSchoolYear(int schoolYear) {
        this.schoolYear = schoolYear;
        return this;
    }

    public boolean getActiveSchoolYear() {
        return activeSchoolYear;
    }

    public SchoolYear setActiveSchoolYear(boolean activeSchoolYear) {
        this.activeSchoolYear = activeSchoolYear;
        return this;
    }
}
