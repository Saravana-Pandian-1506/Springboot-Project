package com.employeeRecruitmentSystem.ERS.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Service;

import com.employeeRecruitmentSystem.ERS.model.Company;
import com.employeeRecruitmentSystem.ERS.repository.OrganizationRepository;


@Service
public class OrganizationService {

	@Autowired
	private OrganizationRepository organizationRepository;
	
	
	public List<Company> findAllCompanies(){
		
		
		List <Company>allCompanies = organizationRepository.findAll();
		return allCompanies;
	}
	
	
	public Company findByCmpId(Long cmpId) {
		
		return organizationRepository.findById(cmpId).orElse(null);
		
	}
	
}
