package com.njt.dao.user;

import com.njt.model.User;
import com.njt.model.user.Employee;

import java.util.List;

public interface EmployeeDao {

    Employee findById(Integer id);

    List<Employee> findAll();

    void persist(Employee employee);

    void update(Employee employee);

    void deleteEmployeeById(int id);
}
