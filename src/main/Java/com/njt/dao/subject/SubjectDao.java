package com.njt.dao.subject;

import com.njt.model.subject.Subject;

import java.util.List;

public interface SubjectDao {
    Subject findById(Integer id);

    List<Subject> findAll();

    void persist(Subject subject);

    void update(Subject subject);

    void deleteSubjectById(int id);

}
