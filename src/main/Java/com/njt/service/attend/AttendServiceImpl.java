package com.njt.service.attend;

import com.njt.dao.attend.AttendDao;
import com.njt.model.attend.Attend;
import com.njt.model.student.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("attendService")
@Transactional
public class AttendServiceImpl implements AttendService{

    @Autowired
    private AttendDao attendDao;

    @Override
    public Attend findById(Integer id) {
        return attendDao.findById(id);
    }

    @Override
    public List<Attend> findAll() {
        return attendDao.findAll();
    }

    @Override
    public List<Attend> findAllForStudent(Student student) {
        return attendDao.findAllForStudent(student);
    }

    @Override
    public void persist(Attend attend) {
        attendDao.persist(attend);
    }

    @Override
    public void update(Attend attend) {
        attendDao.update(attend);
    }
}
