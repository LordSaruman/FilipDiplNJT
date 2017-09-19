package com.njt.service.attend;

import com.njt.model.attend.Attend;
import com.njt.model.student.Student;

import java.util.List;

public interface AttendService {

    Attend findById(Integer id);

    List<Attend> findAll();

    List<Attend> findAllForStudent(Student student);

    void persist(Attend attend);

    void update(Attend attend);
}
