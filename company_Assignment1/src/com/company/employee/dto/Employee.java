package com.company.employee.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Employee {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long eid;
 
    private String ename;
    private String egender;
    private Integer emobile;
    
   
	public Employee() 
	{	
	}
	
	public Long getEid() {
		return eid;
	}
	public void setEid(Long eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEgender() {
		return egender;
	}
	public void setEgender(String egender) {
		this.egender = egender;
	}

	public Integer getEmobile() {
		return emobile;
	}

	public void setEmobile(Integer emobile) {
		this.emobile = emobile;
	}
	
    
}
