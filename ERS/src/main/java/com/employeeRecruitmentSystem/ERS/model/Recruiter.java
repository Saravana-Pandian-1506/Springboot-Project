package com.employeeRecruitmentSystem.ERS.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Recruiter {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    private String cmpName;
    private String cmpEmailId;
    private String password;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}
	public String getCmpEmailId() {
		return cmpEmailId;
	}
	public void setCmpEmailId(String cmpEmailId) {
		this.cmpEmailId = cmpEmailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Recruiter(Long id, String cmpName, String cmpEmailId, String password) {
		super();
		this.id = id;
		this.cmpName = cmpName;
		this.cmpEmailId = cmpEmailId;
		this.password = password;
	}
	public Recruiter() {
		super();
	}
  
}
