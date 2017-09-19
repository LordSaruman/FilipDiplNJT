package com.njt.service.teaching;

import com.njt.model.teaching.Teaching;

import java.util.List;

public interface TeachingService {

    Teaching findById(Integer id);

    List<Teaching> findAll();

    void persist(Teaching teaching);

    void update(Teaching teaching);
}
