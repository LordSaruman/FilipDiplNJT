package com.njt.dao.user;

import com.njt.dao.AbstractDao;
import com.njt.dao.UserDao;
import com.njt.model.User;
import com.njt.model.user.Employee;
import org.springframework.stereotype.Repository;

@Repository("employeeDao")
public class EmployeeDaoImpl extends AbstractDao<Integer, Employee> implements EmployeeDao {

    @Override
    public void deleteEmployeeById(int id) {

    }
}
