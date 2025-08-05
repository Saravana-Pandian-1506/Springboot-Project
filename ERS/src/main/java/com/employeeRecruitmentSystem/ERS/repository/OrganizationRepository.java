package com.employeeRecruitmentSystem.ERS.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.employeeRecruitmentSystem.ERS.model.Company;

@Repository
public interface OrganizationRepository extends JpaRepository<Company,Long>{

}
