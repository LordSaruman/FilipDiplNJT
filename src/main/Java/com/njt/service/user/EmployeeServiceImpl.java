package com.njt.service.user;

import com.njt.dao.user.EmployeeDao;
import com.njt.model.user.Employee;
import com.njt.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeDao dao;
    @Autowired
    private UserService userService;


    @Override
    public Employee findById(int id) {
        return dao.findById(id);
    }

    @Override
    public List<Employee> findAllEmployee() {
        return dao.findAll();
    }

    @Override
    public void saveEmployee(Employee employee) {
        dao.persist(employee);
    }

    @Override
    public void updateEmployee(Employee dbEmployee, Employee employee) {
        dbEmployee.setName(employee.getName());
        dbEmployee.setUser(userService.findById(employee.getUser().getIdKorisnika()));

        dao.update(dbEmployee);
    }

    @Override
    public void deleteEmployeeById(int id) {
        dao.deleteEmployeeById(id);
    }
}



