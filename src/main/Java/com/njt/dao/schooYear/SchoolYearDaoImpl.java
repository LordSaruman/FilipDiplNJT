package com.njt.dao.schooYear;

import com.njt.dao.AbstractDao;
import com.njt.model.schoolYear.SchoolYear;
import org.springframework.stereotype.Repository;

@Repository("schoolYearDao")
public class SchoolYearDaoImpl extends AbstractDao<Integer, SchoolYear> implements SchoolYearDao{

    @Override
    public void deleteSchoolYearById(int id) {

    }
}
