package com.njt.service.schoolYear;

import com.njt.dao.schooYear.SchoolYearDao;
import com.njt.model.schoolYear.SchoolYear;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("schoolYearService")
@Transactional
public class SchoolYearServiceImpl implements SchoolYearService {

    @Autowired
    private SchoolYearDao dao;


    @Override
    public SchoolYear findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<SchoolYear> findAllSchoolYear() {
        return dao.findAll();
    }

    @Override
    public void saveSchoolYear(SchoolYear schoolYear) {
        dao.persist(schoolYear);
    }

    @Override
    public void updateSchoolYear(SchoolYear dbSchoolYear, SchoolYear schoolYear) {
        dbSchoolYear.setActiveSchoolYear(schoolYear.getActiveSchoolYear());
        dbSchoolYear.setSchoolYear(schoolYear.getSchoolYear());

        dao.update(dbSchoolYear);
    }

    @Override
    public void deleteSchoolYearById(int id) {
        dao.deleteSchoolYearById(id);
    }

}
