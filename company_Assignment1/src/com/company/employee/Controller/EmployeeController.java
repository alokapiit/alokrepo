package com.company.employee.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.criterion.CriteriaQuery;

//import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.company.employee.dto.Company;
import com.company.employee.dto.CompanyMO;
import com.company.employee.dto.Employee;
import com.company.employee.service.CompanyService;
import com.company.employee.service.EmployeeService;

@Controller
public class EmployeeController {

@Autowired
private EmployeeService service;

@Autowired
private CompanyService service1;
	
	@RequestMapping(value={"/","/search"})
	public ModelAndView home(@ModelAttribute("companymo") CompanyMO companymo, HttpServletRequest request)
	{
		ModelAndView mav= new ModelAndView("index");
		String action = request.getParameter("action");
		List<Company> listCompany =new ArrayList<Company>();
		if( null!= action && "search".equals(action)) 
		{
			listCompany =service1.listCompany(companymo);
			mav.addObject("listCompany",listCompany);
		}
		else
		{
			listCompany =service1.listAll();
			mav.addObject("listCompany",listCompany);
		}
		return mav;		
	}
	@RequestMapping("/resetindex")
	public ModelAndView resetindex(@ModelAttribute("companymo") CompanyMO companymo)
	{   
		ModelAndView mav1= new ModelAndView("index");
		List<Company> listCompany =service1.listAll();
		mav1.addObject("listCompany",listCompany);
		return mav1;
	}
	@RequestMapping("/createEmployee")
	public ModelAndView Empsearch(@ModelAttribute("employee") Employee employee)
	{
		ModelAndView mav12= new ModelAndView("EmpSearch");
		return mav12;
	}
	@RequestMapping("/resetEmployee")
	public ModelAndView reset(@ModelAttribute("employee") Employee employee)
	{
		ModelAndView mav11= new ModelAndView("EmpSearch");
		return mav11;
	}
	
	@RequestMapping("/createCompany")
	public ModelAndView CompanySearch(@ModelAttribute("company") Company company,HttpServletRequest request)
	{
		List<Employee> listEmployee =service.listAll();
		ModelAndView mav3= new ModelAndView("CompanyDetails");
		String action = request.getParameter("action");
		if( null!= action && "edit".equals(action)) {
			company = (Company) service1.getCompanyById(Integer.parseInt(request.getParameter("cid")));
			mav3.addObject("company",company);
		}
		mav3.addObject("listEmployee",listEmployee);
		return mav3;
	}
	
	@RequestMapping(path="/save",method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("employee") Employee employee)
	{
		service.save(employee);
		return "redirect:/";
	}
	
	@RequestMapping(path="/save1",method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute("company") Company company)
	{
		service1.save1(company);
		return "redirect:/";
	}
	
	@RequestMapping(path="/deleteCompany")
	public String delete(@ModelAttribute("company") Company company,HttpServletRequest request)
	{
		service1.deleteCompanyById(Integer.parseInt(request.getParameter("cid")));
		return "redirect:/";
	}
	

}
