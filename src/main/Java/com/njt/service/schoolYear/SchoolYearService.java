package com.njt.service.schoolYear;

import com.njt.model.schoolYear.SchoolYear;

import java.util.List;

public interface SchoolYearService {

    SchoolYear findById(int id);

    List<SchoolYear> findAllSchoolYear();

    void saveSchoolYear(SchoolYear schoolYear);

    void updateSchoolYear(SchoolYear dbSchoolYeare, SchoolYear schoolYear);

    void deleteSchoolYearById(int id);

}
