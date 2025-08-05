package com.employeeRecruitmentSystem.ERS.model;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class TestResult {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long testId;
	private String cmpName;
	private String candidateName;
	private Long score;
	private Long timeTaken;
	private String candidateEmail;
	
	public Long getTestId() {
		return testId;
	}
	public void setTestId(Long testId) {
		this.testId = testId;
	}
	public String getCmpName() {
		return cmpName;
	}
	public void setCmpName(String cmpName) {
		this.cmpName = cmpName;
	}
	public String getCandidateName() {
		return candidateName;
	}
	public void setCandidateName(String empName) {
		this.candidateName = empName;
	}
	public Long getScore() {
		return score;
	}
	public void setScore(Long score) {
		this.score = score;
	}
	public Long getTimeTaken() {
		return timeTaken;
	}
	public void setTimeTaken(Long timeTaken) {
		this.timeTaken = timeTaken;
	}
	public String getCandidateEmail() {
		return candidateEmail;
	}
	public void setCandidateEmail(String empEmail) {
		this.candidateEmail = empEmail;
	}
	
	@Override
	public String toString() {
		return "TestResult [testId=" + testId + ", cmpName=" + cmpName + ", candidateName=" + candidateName + ", score="
				+ score + ", timeTaken=" + timeTaken + ", candidateEmail=" + candidateEmail + "]";
	}

	
	
	
	

}
