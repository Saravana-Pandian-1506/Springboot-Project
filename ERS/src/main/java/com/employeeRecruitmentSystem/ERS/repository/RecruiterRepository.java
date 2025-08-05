package com.employeeRecruitmentSystem.ERS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeeRecruitmentSystem.ERS.model.Recruiter;

@Repository
public interface RecruiterRepository extends JpaRepository<Recruiter,Long>{

	Recruiter findByCmpName(String cmpName);
	

}
