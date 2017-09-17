package com.njt.dao.student;

import com.njt.dao.AbstractDao;
import com.njt.model.student.Student;
import org.springframework.stereotype.Repository;

@Repository("studentDao")
public class StudentDaoImpl extends AbstractDao<Integer, Student> implements StudentDao {

    @Override
    public void deleteStudentById(int id) {
        String sql = "DELETE FROM student WHERE idStudenta = " +id;
    }
}
