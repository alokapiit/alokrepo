package com.company.employee.repository;

import org.springframework.data.repository.CrudRepository;

import com.company.employee.dto.Employee;

public interface EmployeeRepository extends CrudRepository<Employee, Long>{



}
