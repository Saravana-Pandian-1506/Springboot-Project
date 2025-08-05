package com.employeeRecruitmentSystem.ERS.serivce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeRecruitmentSystem.ERS.model.Candidate;
import com.employeeRecruitmentSystem.ERS.repository.CandidateRepository;

@Service
public class CandidateService {
    
	@Autowired
	private CandidateRepository candidateRepository;
	
	public void saveCandidate(Candidate candidate) {
	  	candidateRepository.save(candidate);
	}
	
	
	public Candidate findByEmail(String email) {
	    return candidateRepository.findByCandidateEmail(email);
	}
	
	
}
