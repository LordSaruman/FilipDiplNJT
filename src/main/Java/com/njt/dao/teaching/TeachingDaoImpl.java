package com.njt.dao.teaching;

import com.njt.dao.AbstractDao;
import com.njt.dao.attend.AttendDao;
import com.njt.model.attend.Attend;
import com.njt.model.student.Student;
import com.njt.model.teaching.Teaching;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("teachingDao")
public class TeachingDaoImpl extends AbstractDao<Integer, Teaching> implements TeachingDao {

}
