package com.company.employee.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.AbstractQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.employee.dto.Company;
import com.company.employee.dto.CompanyMO;
import com.company.employee.repository.CompanyRepository;

@Service
public class CompanyService {
	
	@Autowired
	private CompanyRepository repoc;

	public List<Company> listAll() {
		
		return (List<Company>) repoc.findAll();
	}

	public void save1(Company company) {
		repoc.save(company);
	}
	
	public Company getCompanyById(int parseInt) {
		Optional<Company> company = repoc.findById(parseInt);
		return company.get();
	}

	public void deleteCompanyById(int parseInt) {
	
		repoc.deleteById(parseInt);
	}

	
	public List<Company> listCompany(CompanyMO companymo) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory( "CompanyManagementDB" );  
        EntityManager em = emf.createEntityManager();  
        em.getTransaction().begin( );  
          
        CriteriaBuilder cb=em.getCriteriaBuilder();  
          
        AbstractQuery<Company> cq1=cb.createQuery(Company.class);  
        
          
       Root<Company> stud1=cq1.from(Company.class); 
     
         
       if(null!=companymo.getClocation() &&  ! " ".equals(companymo.getClocation()))
       {
    	   cq1.where(cb.equal(stud1.get("clocation"), companymo.getClocation()));   
       }
       if(null!=companymo.getCname() &&  ! " ".equals(companymo.getCname()))
       {
    	   cq1.where(cb.equal(stud1.get("cname"), companymo.getCname()));   
       }
       if(null!=companymo.getCid())
       {
    	   cq1.where(cb.equal(stud1.get("cid"), companymo.getCid()));   
       }
        CriteriaQuery<Company> select1 = ((CriteriaQuery<Company>) cq1).select(stud1);  
        TypedQuery<Company> tq1 = em.createQuery(select1);  
        List<Company> list1 = tq1.getResultList();  
        
        for(Company s:list1)  
        {  
        System.out.print(s.getClocation()+"\n");  
        System.out.print("\t"+s.getCname()+"\n");  
        System.out.println("\t"+s.getCid()+"\n");  
        }  

	 return list1;
	}
}
