package com.njt.dao.subject;

import com.njt.dao.AbstractDao;
import com.njt.model.subject.Subject;
import org.hibernate.Criteria;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("subjectDao")
public class SubjectDaoImpl extends AbstractDao<Integer, Subject> implements SubjectDao {
    @Override
    public void deleteSubjectById(int id) {
        String sql = "DELETE FROM predmet WHERE idPredmeta = " +id;
    }

    @Override
    public List<Subject> findAll() {
        Criteria criteria = createEntityCriteria();
        return (List<Subject>) criteria.list();
    }
}
