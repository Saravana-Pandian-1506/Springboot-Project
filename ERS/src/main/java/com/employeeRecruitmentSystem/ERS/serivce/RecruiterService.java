package com.employeeRecruitmentSystem.ERS.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeRecruitmentSystem.ERS.model.Recruiter;
import com.employeeRecruitmentSystem.ERS.repository.RecruiterRepository;

@Service
public class RecruiterService {
	
	@Autowired
	private RecruiterRepository recruiterRepository;
	
	public Recruiter findByCmpName(String cmpName) {
		return recruiterRepository.findByCmpName(cmpName);
	}

}
