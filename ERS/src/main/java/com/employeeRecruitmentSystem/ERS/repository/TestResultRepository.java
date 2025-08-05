package com.employeeRecruitmentSystem.ERS.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.employeeRecruitmentSystem.ERS.model.TestResult;

@Repository
public interface TestResultRepository extends JpaRepository<TestResult,Long>{
     
	
	
	@Query("SELECT t FROM TestResult t WHERE t.score > 7 AND t.cmpName = :cmpName")
	List<TestResult> getValidScoreCandidate(@Param("cmpName") String cmpName);

	
}

