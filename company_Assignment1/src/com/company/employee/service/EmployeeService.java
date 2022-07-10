package com.company.employee.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.employee.dto.Employee;
import com.company.employee.repository.EmployeeRepository;



@Service
@Transactional
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository repo;
	

	public List<Employee> listAll() {
		// TODO Auto-generated method stub
		return (List<Employee>) repo.findAll();
	}

	

	public void save(Employee employee) {
		// TODO Auto-generated method stub
		repo.save(employee);
	}

	/*
	 * public List<Employee> search(String keyword) { return repo.search(keyword); }
	 */
}
