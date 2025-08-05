package com.employeeRecruitmentSystem.ERS.serivce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.employeeRecruitmentSystem.ERS.model.TestResult;
import com.employeeRecruitmentSystem.ERS.repository.TestResultRepository;

@Service
public class TestResultService {
  
	@Autowired
	private TestResultRepository testResultRepository;
	
	public List<TestResult> getValidScoreCandidate(String cmpName){
		return testResultRepository.getValidScoreCandidate(cmpName);
	}
	
	public TestResult saveTest(TestResult result) {
		return testResultRepository.save(result);
	}
	
}
