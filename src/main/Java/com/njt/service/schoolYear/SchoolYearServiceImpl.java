package com.njt.service.schoolYear;

import com.njt.dao.schooYear.SchoolYearDao;
import com.njt.model.schoolYear.SchoolYear;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("schoolYearService")
@Transactional
public class SchoolYearServiceImpl implements  SchoolYearService{

    @Autowired
    private SchoolYearDao dao;


    @Override
    public SchoolYear findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<SchoolYear> findAllSchoolYear() {
        //dao.findAllSchoolYear();
        return null;
    }

    @Override
    public void saveSchoolYear(SchoolYear schoolYear) {
        //dao.saveSchoolYear(schoolYear);
    }

    @Override
    public void updateSchoolYear(SchoolYear dbSchoolYeare, SchoolYear schoolYear) {
        dbSchoolYeare.setActiveSchoolYear(schoolYear.getActiveSchoolYear());
        dbSchoolYeare.setSchoolYear(schoolYear.getSchoolYear());

        dao.update(dbSchoolYeare);
    }

    @Override
    public void deleteSchoolYearById(int id) {
        dao.deleteScholYearById(id);
    }

}
