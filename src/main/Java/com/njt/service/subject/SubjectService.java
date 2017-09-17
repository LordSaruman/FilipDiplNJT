package com.njt.service.subject;

import com.njt.model.subject.Subject;

import java.util.List;

public interface SubjectService {

    Subject findById(int id);

    List<Subject> findAllSubjects();

    void saveSubject(Subject subject);

    void updateSubject(Subject dbSubject, Subject subject);

    void deleteSubjectById(int id);

}
