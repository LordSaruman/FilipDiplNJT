package com.njt.service.user;

import com.njt.model.user.Employee;

import java.util.List;

public interface EmployeeService {

    Employee findById(int id);

    List<Employee> findAllEmployee();

    void saveEmployee(Employee employee);

    void updateEmployee(Employee dbEmployee, Employee employee);

    void deleteEmployeeById(int id);

}
