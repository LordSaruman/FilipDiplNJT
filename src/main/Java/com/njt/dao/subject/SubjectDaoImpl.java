package com.njt.dao.subject;

import com.njt.dao.AbstractDao;
import com.njt.model.subject.Subject;
import org.springframework.stereotype.Repository;

@Repository("subjectDao")
public class SubjectDaoImpl extends AbstractDao<Integer, Subject> implements SubjectDao {
    @Override
    public void deleteSubjectById(int id) {
        String sql = "DELETE FROM predmet WHERE idPredmeta = " +id;
    }
}
