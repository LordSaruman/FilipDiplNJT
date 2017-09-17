package com.njt.dao.student;

import com.njt.model.student.Student;

import java.util.List;

public interface StudentDao {

    Student findById(Integer id);

    List<Student> findAll();

    void persist(Student student);

    void update(Student student);

    void deleteStudentById(int id);
}
