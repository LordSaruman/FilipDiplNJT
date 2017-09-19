package com.njt.service.subject;

import com.njt.dao.subject.SubjectDao;
import com.njt.model.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("subjectService")
@Transactional
public class SubjectServiceImpl implements SubjectService{

    @Autowired
    private SubjectDao dao;

    @Override
    public Subject findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<Subject> findAllSubjects() {
        return dao.findAll();
    }

    @Override
    public void saveSubject(Subject subject) {
        dao.persist(subject);
    }

    @Override
    public void updateSubject(Subject dbSubject, Subject subject) {
        dbSubject.setNameOfTheSubject(subject.getNameOfTheSubject());
        dbSubject.setTypeOfStudies(subject.getTypeOfStudies());
        dbSubject.setYear(subject.getYear());
        dbSubject.setCourse(subject.getCourse());
        dbSubject.setEspb(subject.getEspb());
        dbSubject.setNumberOfLectures(subject.getNumberOfLectures());
        dbSubject.setNumberOfStudents(subject.getNumberOfStudents());

        dao.update(dbSubject);
    }

    @Override
    public void deleteSubjectById(int id) {
        dao.deleteSubjectById(id);
    }

}
