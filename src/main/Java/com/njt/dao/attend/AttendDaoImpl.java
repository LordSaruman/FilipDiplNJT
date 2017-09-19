package com.njt.dao.attend;

import com.njt.dao.AbstractDao;
import com.njt.model.attend.Attend;
import com.njt.model.student.Student;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("attendDao")
public class AttendDaoImpl extends AbstractDao<Integer, Attend> implements AttendDao {

    @Override
    @SuppressWarnings("unchecked")
    public List<Attend> findAllForStudent(Student student) {
        Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("student", student));

        return (List<Attend>) criteria.list();
    }
}
