package com.employeeRecruitmentSystem.ERS.model;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Company {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long cmpId;

    private String cmpName;
    private Integer jobOpenings;
    private String designation;
    private String about;
    private String location;
    private String industry;
    private String website;
    private String cmpEmail;
    private String contactNumber;
	public Long getCmpId() {
		return cmpId;
	}
	public void setCmpId(Long cmpId) {
		this.cmpId = cmpId;
	}
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}
	public Integer getJobOpenings() {
		return jobOpenings;
	}
	public void setJobOpenings(Integer jobOpenings) {
		this.jobOpenings = jobOpenings;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getEmail() {
		return cmpEmail;
	}
	public void setEmail(String email) {
		this.cmpEmail = email;
	}
	public String getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	
	@Override
	public String toString() {
		return "Company [cmpId=" + cmpId + ", cmpName=" + cmpName + ", jobOpenings=" + jobOpenings + ", designation="
				+ designation + ", about=" + about + ", location=" + location + ", industry=" + industry + ", website="
				+ website + ", email=" + cmpEmail + ", contactNumber=" + contactNumber + "]";
	}
    
    
    
}

