package com.company.employee.repository;

import org.springframework.data.repository.CrudRepository;

import com.company.employee.dto.Company;

public interface CompanyRepository extends CrudRepository<Company, Integer> {

}
