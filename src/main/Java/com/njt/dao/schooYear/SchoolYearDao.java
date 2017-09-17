package com.njt.dao.schooYear;

import com.njt.model.schoolYear.SchoolYear;

import java.util.List;

public interface SchoolYearDao {

    SchoolYear findById(Integer id);

    List<SchoolYear> findAll();

    void persist(SchoolYear schoolYear);

    void update(SchoolYear schoolYear);

    void deleteSchoolYearById(int id);
}
