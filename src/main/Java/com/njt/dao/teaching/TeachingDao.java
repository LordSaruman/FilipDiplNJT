package com.njt.dao.teaching;

import com.njt.model.teaching.Teaching;

import java.util.List;

public interface TeachingDao {

    Teaching findById(Integer id);

    List<Teaching> findAll();

    void persist(Teaching teaching);

    void update(Teaching teaching);
}
