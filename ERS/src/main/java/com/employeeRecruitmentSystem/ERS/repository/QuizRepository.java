package com.employeeRecruitmentSystem.ERS.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeeRecruitmentSystem.ERS.model.Quiz;

@Repository
public interface QuizRepository extends JpaRepository<Quiz,Long>{

	
   
}
