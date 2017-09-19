package com.njt.service.teaching;

import com.njt.dao.teaching.TeachingDao;
import com.njt.model.teaching.Teaching;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("teachingService")
@Transactional
public class teachingServiceImpl implements TeachingService {

    @Autowired
    private TeachingDao teachingDao;

    @Override
    public Teaching findById(Integer id) {
        return teachingDao.findById(id);
    }

    @Override
    public List<Teaching> findAll() {
        return teachingDao.findAll();
    }

    @Override
    public void persist(Teaching teaching) {
        teachingDao.persist(teaching);
    }

    @Override
    public void update(Teaching teaching) {
        teachingDao.update(teaching);
    }
}
