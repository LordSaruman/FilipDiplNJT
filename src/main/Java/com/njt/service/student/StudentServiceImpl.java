package com.njt.service.student;

import com.njt.dao.student.StudentDao;
import com.njt.model.student.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("studentService")
@Transactional
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDao dao;

    @Override
    public Student findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<Student> findAllStudents() {
        return dao.findAll();
    }

    @Override
    public void saveStudent(Student student) {
        //dao.saveStudent(student);
    }

    @Override
    public void updateStudent(Student dbStudent, Student student) {
        dbStudent.setCourse(student.getCourse());
        dbStudent.setDateOfEnrolling(student.getDateOfEnrolling());
        dbStudent.setIndexNumber(student.getIndexNumber());
        dbStudent.setName(student.getName());
        dbStudent.setSurname(student.getSurname());

        dao.update(dbStudent);
    }

    @Override
    public void deleteStudentById(int id) {
        dao.deleteStudentById(id);
    }

}
