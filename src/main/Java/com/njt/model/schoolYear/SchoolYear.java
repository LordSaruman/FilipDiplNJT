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
    private Date schoolYear;

    @Column(name = "aktivna", unique = true, nullable = false)
    private Date activeSchoolYear;

    public int getIdSkolskaGodina() {
        return idSkolskaGodina;
    }

    public SchoolYear setIdSkolskaGodina(int idSkolskaGodina) {
        this.idSkolskaGodina = idSkolskaGodina;
        return this;
    }

    public Date getSchoolYear() {
        return schoolYear;
    }

    public SchoolYear setSchoolYear(Date schoolYear) {
        this.schoolYear = schoolYear;
        return this;
    }

    public Date getActiveSchoolYear() {
        return activeSchoolYear;
    }

    public SchoolYear setActiveSchoolYear(Date activeSchoolYear) {
        this.activeSchoolYear = activeSchoolYear;
        return this;
    }
}
