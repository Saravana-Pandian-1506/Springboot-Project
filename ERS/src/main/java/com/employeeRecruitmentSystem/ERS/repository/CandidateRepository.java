package com.employeeRecruitmentSystem.ERS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.employeeRecruitmentSystem.ERS.model.Candidate;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate,String> {

	Candidate findByCandidateEmail(String email);


}
