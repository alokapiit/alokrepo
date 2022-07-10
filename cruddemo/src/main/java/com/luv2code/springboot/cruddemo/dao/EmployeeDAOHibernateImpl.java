package com.luv2code.springboot.cruddemo.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springboot.cruddemo.entity.Employee;

@Repository
public class EmployeeDAOHibernateImpl implements EmployeeDAO {

	// Define field for entity manager
	private EntityManager entityManager; 

	// set up for constructor injection
	@Autowired
	public EmployeeDAOHibernateImpl(EntityManager theEntityManager) {
		entityManager=theEntityManager;
	}
	@Override
	public List<Employee> findAll(){
		
		// get hibernate session
		Session currentSession=  entityManager.unwrap(Session.class);
		
		//create a query
		Query<Employee> theQuery=
				currentSession.createQuery("from Employee", Employee.class );
		
		//execute a query and get result
		List<Employee> employees=theQuery.getResultList();
		
		//return the resultset
		return employees;
	}
	
	@Override
	public Employee findById(int theId) {
		
		// get the hibernate session
		Session currentSession=  entityManager.unwrap(Session.class);
		
		//get the employee
		Employee theEmployee=
				currentSession.get(Employee.class,theId);
		
		// return the employee
		
		return theEmployee;
	}
	@Override
	public void save(Employee theEmployee) {
		
		// get the hibernate session
		Session currentSession=  entityManager.unwrap(Session.class);
		
		// save employee
		currentSession.saveOrUpdate(theEmployee);
	}
	@Override
	public void deleteById(int theId) {
		
		// get the hibernate session
		Session currentSession=  entityManager.unwrap(Session.class);
		
		//create a query
		Query<Employee> theQuery=
				currentSession.createQuery("delete from Employee where id=:employeeId" );
		theQuery.setParameter("employeeId", theId);
		// delete employee
		theQuery.executeUpdate();
		
	}

}
