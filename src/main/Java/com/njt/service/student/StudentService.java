package com.njt.service.student;

import com.njt.model.student.Student;

import java.util.List;

public interface StudentService {

    Student findById(int id);

    List<Student> findAllStudents();

    void saveStudent(Student student);

    void updateStudent(Student dbStudent, Student student);

    void deleteStudentById(int id);

}
